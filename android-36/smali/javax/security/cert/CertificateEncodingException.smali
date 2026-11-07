.class public Ljavax/security/cert/CertificateEncodingException;
.super Ljavax/security/cert/CertificateException;
.source "CertificateEncodingException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x71a059ad371cb20eL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljavax/security/cert/CertificateException;-><init>()V

    .line 52
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method
