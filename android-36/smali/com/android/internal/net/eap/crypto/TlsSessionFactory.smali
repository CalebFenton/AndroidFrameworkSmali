.class public Lcom/android/internal/net/eap/crypto/TlsSessionFactory;
.super Ljava/lang/Object;
.source "TlsSessionFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist newInstance(Ljava/security/cert/X509Certificate;Ljava/security/SecureRandom;)Lcom/android/internal/net/eap/crypto/TlsSession;
    .registers 4
    .param p1, "serverCaCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/eap/crypto/TlsSession;-><init>(Ljava/security/cert/X509Certificate;Ljava/security/SecureRandom;)V

    return-object v0
.end method
