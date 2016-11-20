.class final Lsun/security/ssl/DummyX509TrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SSLContextImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field static final INSTANCE:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 957
    new-instance v0, Lsun/security/ssl/DummyX509TrustManager;

    #@2
    invoke-direct {v0}, Lsun/security/ssl/DummyX509TrustManager;-><init>()V

    #@5
    sput-object v0, Lsun/security/ssl/DummyX509TrustManager;->INSTANCE:Ljavax/net/ssl/X509TrustManager;

    #@7
    .line 954
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 959
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 973
    new-instance v0, Ljava/security/cert/CertificateException;

    #@2
    .line 974
    const-string/jumbo v1, "No X509TrustManager implementation avaiable"

    #@5
    .line 973
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1003
    new-instance v0, Ljava/security/cert/CertificateException;

    #@2
    .line 1004
    const-string/jumbo v1, "No X509TrustManager implementation available"

    #@5
    .line 1003
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1017
    new-instance v0, Ljava/security/cert/CertificateException;

    #@2
    .line 1018
    const-string/jumbo v1, "No X509TrustManager implementation available"

    #@5
    .line 1017
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 987
    new-instance v0, Ljava/security/cert/CertificateException;

    #@2
    .line 988
    const-string/jumbo v1, "No X509TrustManager implementation available"

    #@5
    .line 987
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1010
    new-instance v0, Ljava/security/cert/CertificateException;

    #@2
    .line 1011
    const-string/jumbo v1, "No X509TrustManager implementation available"

    #@5
    .line 1010
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1024
    new-instance v0, Ljava/security/cert/CertificateException;

    #@2
    .line 1025
    const-string/jumbo v1, "No X509TrustManager implementation available"

    #@5
    .line 1024
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 997
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    #@3
    return-object v0
.end method
