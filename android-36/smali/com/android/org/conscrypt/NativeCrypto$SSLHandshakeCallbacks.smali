.class interface abstract Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeCrypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SSLHandshakeCallbacks"
.end annotation


# virtual methods
.method public abstract blacklist clientCertificateRequested([B[I[[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract blacklist clientPSKKeyRequested(Ljava/lang/String;[B[B)I
.end method

.method public abstract blacklist onNewSessionEstablished(J)V
.end method

.method public abstract blacklist onSSLStateChange(II)V
.end method

.method public abstract blacklist selectApplicationProtocol([B)I
.end method

.method public abstract blacklist serverCertificateRequested()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method public abstract blacklist serverSessionRequested([B)J
.end method

.method public abstract blacklist verifyCertificateChain([[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method
