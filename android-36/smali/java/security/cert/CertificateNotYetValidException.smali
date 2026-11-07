.class public Ljava/security/cert/CertificateNotYetValidException;
.super Ljava/security/cert/CertificateException;
.source "CertificateNotYetValidException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x3c7356120800b0feL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 48
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
