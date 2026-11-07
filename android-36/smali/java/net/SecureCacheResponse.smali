.class public abstract Ljava/net/SecureCacheResponse;
.super Ljava/net/CacheResponse;
.source "SecureCacheResponse.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api getCipherSuite()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getLocalCertificateChain()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getLocalPrincipal()Ljava/security/Principal;
.end method

.method public abstract whitelist test-api getPeerPrincipal()Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getServerCertificateChain()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
