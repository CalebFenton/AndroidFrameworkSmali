.class interface abstract Lcom/android/org/conscrypt/ConscryptSession;
.super Ljava/lang/Object;
.source "ConscryptSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# virtual methods
.method public abstract blacklist getApplicationProtocol()Ljava/lang/String;
.end method

.method public bridge synthetic whitelist test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 29
    invoke-interface {p0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract blacklist getPeerSignedCertificateTimestamp()[B
.end method

.method public abstract blacklist getRequestedServerName()Ljava/lang/String;
.end method

.method public abstract blacklist getStatusResponses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method
