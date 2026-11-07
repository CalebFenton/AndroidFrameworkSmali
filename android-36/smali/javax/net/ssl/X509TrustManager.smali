.class public interface abstract Ljavax/net/ssl/X509TrustManager;
.super Ljava/lang/Object;
.source "X509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/TrustManager;


# virtual methods
.method public abstract whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
.end method
