.class public Ljavax/security/cert/CertificateExpiredException;
.super Ljavax/security/cert/CertificateException;
.source "CertificateExpiredException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x46a9005375c6253bL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljavax/security/cert/CertificateException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method
