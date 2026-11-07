.class abstract Lcom/android/org/conscrypt/AbstractConscryptEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "AbstractConscryptEngine.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getApplicationProtocol()Ljava/lang/String;
.end method

.method abstract blacklist getApplicationProtocols()[Ljava/lang/String;
.end method

.method abstract blacklist getChannelId()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
.end method

.method public final whitelist test-api getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->handshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist getHostname()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getPeerHost()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getPeerPort()I
.end method

.method abstract blacklist getTlsUnique()[B
.end method

.method abstract blacklist handshakeSession()Ljavax/net/ssl/SSLSession;
.end method

.method abstract blacklist maxSealOverhead()I
.end method

.method abstract blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
.end method

.method abstract blacklist setApplicationProtocols([Ljava/lang/String;)V
.end method

.method abstract blacklist setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
.end method

.method abstract blacklist setChannelIdEnabled(Z)V
.end method

.method abstract blacklist setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
.end method

.method abstract blacklist setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V
.end method

.method abstract blacklist setHostname(Ljava/lang/String;)V
.end method

.method abstract blacklist setUseSessionTickets(Z)V
.end method

.method public abstract whitelist test-api unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method abstract blacklist unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method abstract blacklist unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method
