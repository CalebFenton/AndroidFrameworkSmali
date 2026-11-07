.class Lcom/android/org/conscrypt/ConscryptEngineSocket$2;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/ConscryptEngineSocket;->getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

.field final synthetic blacklist val$socket:Lcom/android/org/conscrypt/ConscryptEngineSocket;


# direct methods
.method constructor blacklist <init>(Ljavax/net/ssl/X509ExtendedTrustManager;Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 3

    .line 150
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    iput-object p2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;->val$socket:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 6
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 6
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "sslEngine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;->val$socket:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0, p1, p2, v1}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 165
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 6
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 6
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "sslEngine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;->val$socket:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0, p1, p2, v1}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 170
    return-void
.end method

.method public whitelist test-api getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$2;->val$extendedDelegate:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0}, Ljavax/net/ssl/X509ExtendedTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
