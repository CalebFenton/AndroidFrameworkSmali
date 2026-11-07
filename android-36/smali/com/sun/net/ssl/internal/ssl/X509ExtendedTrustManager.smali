.class public abstract Lcom/sun/net/ssl/internal/ssl/X509ExtendedTrustManager;
.super Ljava/lang/Object;
.source "X509ExtendedTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public abstract blacklist checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public abstract blacklist checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method
