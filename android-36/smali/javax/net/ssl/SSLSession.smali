.class public interface abstract Ljavax/net/ssl/SSLSession;
.super Ljava/lang/Object;
.source "SSLSession.java"


# virtual methods
.method public abstract whitelist test-api getApplicationBufferSize()I
.end method

.method public abstract whitelist test-api getCipherSuite()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getCreationTime()J
.end method

.method public abstract whitelist test-api getId()[B
.end method

.method public abstract whitelist test-api getLastAccessedTime()J
.end method

.method public abstract whitelist test-api getLocalCertificates()[Ljava/security/cert/Certificate;
.end method

.method public abstract whitelist test-api getLocalPrincipal()Ljava/security/Principal;
.end method

.method public abstract whitelist test-api getPacketBufferSize()I
.end method

.method public abstract whitelist test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getPeerHost()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getPeerPort()I
.end method

.method public abstract whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getProtocol()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method public abstract whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract whitelist test-api getValueNames()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api invalidate()V
.end method

.method public abstract whitelist test-api isValid()Z
.end method

.method public abstract whitelist test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract whitelist test-api removeValue(Ljava/lang/String;)V
.end method
