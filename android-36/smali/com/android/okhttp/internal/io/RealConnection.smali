.class public final Lcom/android/okhttp/internal/io/RealConnection;
.super Ljava/lang/Object;
.source "RealConnection.java"

# interfaces
.implements Lcom/android/okhttp/Connection;


# static fields
.field private static blacklist lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static blacklist lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;


# instance fields
.field public final blacklist allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/okhttp/internal/http/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile blacklist framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private blacklist handshake:Lcom/android/okhttp/Handshake;

.field public blacklist idleAtNanos:J

.field public blacklist noNewStreams:Z

.field private blacklist protocol:Lcom/android/okhttp/Protocol;

.field private blacklist rawSocket:Ljava/net/Socket;

.field private final blacklist route:Lcom/android/okhttp/Route;

.field public blacklist sink:Lcom/android/okhttp/okio/BufferedSink;

.field public blacklist socket:Ljava/net/Socket;

.field public blacklist source:Lcom/android/okhttp/okio/BufferedSource;

.field public blacklist streamCount:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/Route;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 90
    iput-wide v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 93
    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    return-void
.end method

.method private blacklist connectSocket(IIILcom/android/okhttp/internal/ConnectionSpecSelector;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 145
    :try_start_5
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_14
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_14} :catch_84

    .line 149
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 150
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 152
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {p1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 153
    invoke-direct {p0, p2, p3, p4}, Lcom/android/okhttp/internal/io/RealConnection;->connectTls(IILcom/android/okhttp/internal/ConnectionSpecSelector;)V

    goto :goto_44

    .line 155
    :cond_3c
    sget-object p1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 156
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 159
    :goto_44
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object p2, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-eq p1, p2, :cond_50

    sget-object p2, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne p1, p2, :cond_4f

    goto :goto_50

    :cond_4f
    return-void

    .line 160
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 162
    new-instance p1, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object p2, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    iget-object p3, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 163
    invoke-virtual {p3}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 164
    invoke-virtual {p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->build()Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->sendConnectionPreface()V

    .line 169
    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    return-void

    .line 147
    :catch_84
    new-instance p1, Ljava/net/ConnectException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to connect to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {p0}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist connectTls(IILcom/android/okhttp/internal/ConnectionSpecSelector;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/io/RealConnection;->createTunnel(II)V

    .line 179
    :cond_b
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {p1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    const/4 v0, 0x0

    .line 185
    :try_start_16
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 186
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getUriPort()I

    move-result v3

    const/4 v4, 0x1

    .line 185
    invoke-virtual {p2, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;
    :try_end_27
    .catch Ljava/lang/AssertionError; {:try_start_16 .. :try_end_27} :catch_119
    .catchall {:try_start_16 .. :try_end_27} :catchall_117

    .line 189
    :try_start_27
    invoke-virtual {p3, p2}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;

    move-result-object p3

    .line 190
    invoke-virtual {p3}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 191
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getProtocols()Ljava/util/List;

    move-result-object v3

    .line 191
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_49

    :catchall_41
    move-exception p0

    move-object v0, p2

    goto/16 :goto_127

    :catch_45
    move-exception p0

    move-object v0, p2

    goto/16 :goto_11a

    .line 196
    :cond_49
    :goto_49
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 197
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;

    move-result-object v1

    .line 200
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 209
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v2

    sget-object v3, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    if-eq v2, v3, :cond_8e

    .line 210
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/io/RealConnection;->trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/internal/tls/TrustRootIndex;

    move-result-object v2

    .line 211
    new-instance v3, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;

    invoke-direct {v3, v2}, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;-><init>(Lcom/android/okhttp/internal/tls/TrustRootIndex;)V

    .line 212
    invoke-virtual {v1}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 213
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 217
    :cond_8e
    invoke-virtual {p3}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 218
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_9c
    iput-object p2, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 221
    invoke-static {p2}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 222
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 223
    iput-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    if-eqz v0, :cond_bd

    .line 225
    invoke-static {v0}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    move-result-object p1

    goto :goto_bf

    .line 226
    :cond_bd
    sget-object p1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    :goto_bf
    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;
    :try_end_c1
    .catch Ljava/lang/AssertionError; {:try_start_27 .. :try_end_c1} :catch_45
    .catchall {:try_start_27 .. :try_end_c1} :catchall_41

    .line 233
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    return-void

    .line 201
    :cond_c9
    :try_start_c9
    invoke-virtual {v1}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p0

    const/4 p3, 0x0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 202
    new-instance p3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hostname "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not verified:\n    certificate: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {p0}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    DN: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    subjectAltNames: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {p0}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_117
    .catch Ljava/lang/AssertionError; {:try_start_c9 .. :try_end_117} :catch_45
    .catchall {:try_start_c9 .. :try_end_117} :catchall_41

    :catchall_117
    move-exception p0

    goto :goto_127

    :catch_119
    move-exception p0

    .line 229
    :goto_11a
    :try_start_11a
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p1

    if-eqz p1, :cond_126

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 230
    :cond_126
    throw p0
    :try_end_127
    .catchall {:try_start_11a .. :try_end_127} :catchall_117

    :goto_127
    if-eqz v0, :cond_130

    .line 233
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 236
    :cond_130
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 238
    throw p0
.end method

.method private blacklist createTunnel(II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/android/okhttp/internal/io/RealConnection;->createTunnelRequest()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    :goto_23
    new-instance v2, Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Lcom/android/okhttp/internal/http/Http1xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 270
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 271
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/Sink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 272
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/Http1xStream;->finishRequest()V

    .line 274
    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/Http1xStream;->readResponse()Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v0

    .line 277
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v5, v3, v7

    if-nez v5, :cond_65

    const-wide/16 v3, 0x0

    .line 281
    :cond_65
    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    const v3, 0x7fffffff

    .line 282
    invoke-static {v2, v3, v6}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 283
    invoke-interface {v2}, Lcom/android/okhttp/okio/Source;->close()V

    .line 285
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_b8

    const/16 v3, 0x197

    if-ne v2, v3, :cond_9d

    .line 297
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 298
    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v3}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    .line 297
    invoke-static {v2, v0, v3}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v0

    if-eqz v0, :cond_95

    goto :goto_23

    .line 300
    :cond_95
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to authenticate with proxy"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 303
    :cond_9d
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected response code for CONNECT: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->code()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :cond_b8
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_d1

    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result p0

    if-eqz p0, :cond_d1

    return-void

    .line 292
    :cond_d1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TLS tunnel buffered too many bytes!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist createTunnelRequest()Lcom/android/okhttp/Request;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 318
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 319
    invoke-virtual {p0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Host"

    invoke-virtual {v0, v1, p0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    const-string v0, "Proxy-Connection"

    const-string v1, "Keep-Alive"

    .line 320
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    const-string v0, "User-Agent"

    .line 321
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized blacklist trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .registers 4

    const-class v0, Lcom/android/okhttp/internal/io/RealConnection;

    monitor-enter v0

    .line 250
    :try_start_3
    sget-object v1, Lcom/android/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eq p0, v1, :cond_1e

    .line 251
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/internal/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 252
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/Platform;->trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lcom/android/okhttp/internal/tls/TrustRootIndex;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;

    .line 253
    sput-object p0, Lcom/android/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_22

    .line 255
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/android/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1c

    monitor-exit v0

    return-object p0

    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1c

    throw p0
.end method


# virtual methods
.method public blacklist allocationLimit()I
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz p0, :cond_9

    .line 346
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist cancel()V
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public blacklist connect(IIILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v0, :cond_9f

    .line 101
    new-instance v0, Lcom/android/okhttp/internal/ConnectionSpecSelector;

    invoke-direct {v0, p4}, Lcom/android/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 102
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v2

    .line 105
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v3}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-nez v3, :cond_46

    sget-object v3, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    .line 106
    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_46

    .line 107
    :cond_2a
    new-instance p0, Lcom/android/okhttp/internal/http/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CLEARTEXT communication not supported: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_46
    :goto_46
    const/4 p4, 0x0

    move-object v3, p4

    .line 111
    :goto_48
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v4, :cond_9e

    .line 113
    :try_start_4c
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_65

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_5d

    goto :goto_65

    .line 115
    :cond_5d
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_6d

    :catch_63
    move-exception v4

    goto :goto_73

    .line 114
    :cond_65
    :goto_65
    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    .line 115
    :goto_6d
    iput-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 116
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/internal/io/RealConnection;->connectSocket(IIILcom/android/okhttp/internal/ConnectionSpecSelector;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_72} :catch_63

    goto :goto_48

    .line 118
    :goto_73
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 119
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 120
    iput-object p4, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 121
    iput-object p4, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 122
    iput-object p4, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 123
    iput-object p4, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 124
    iput-object p4, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    .line 125
    iput-object p4, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v3, :cond_91

    .line 128
    new-instance v3, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {v3, v4}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_94

    .line 130
    :cond_91
    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_94
    if-eqz p5, :cond_9d

    .line 133
    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v4

    if-eqz v4, :cond_9d

    goto :goto_48

    .line 134
    :cond_9d
    throw v3

    :cond_9e
    return-void

    .line 98
    :cond_9f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already connected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getHandshake()Lcom/android/okhttp/Handshake;
    .registers 1

    .line 383
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    return-object p0
.end method

.method public blacklist getProtocol()Lcom/android/okhttp/Protocol;
    .registers 1

    .line 395
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method public blacklist getRoute()Lcom/android/okhttp/Route;
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    return-object p0
.end method

.method public blacklist getSocket()Ljava/net/Socket;
    .registers 1

    .line 340
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method blacklist isConnected()Z
    .registers 1

    .line 327
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isHealthy(Z)Z
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_4a

    .line 356
    :cond_1a
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    return v2

    :cond_20
    if-eqz p1, :cond_49

    .line 362
    :try_start_22
    iget-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_28} :catch_49
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_48

    .line 364
    :try_start_28
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 365
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_41

    if-eqz v0, :cond_3b

    .line 370
    :try_start_35
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_3b
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_41
    move-exception v0

    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 371
    throw v0
    :try_end_48
    .catch Ljava/net/SocketTimeoutException; {:try_start_35 .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_48} :catch_48

    :catch_48
    return v1

    :catch_49
    :cond_49
    return v2

    :cond_4a
    :goto_4a
    return v1
.end method

.method public blacklist isMultiplexed()Z
    .registers 1

    .line 391
    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 400
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 402
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 404
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_5d

    :cond_5b
    const-string v1, "none"

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
