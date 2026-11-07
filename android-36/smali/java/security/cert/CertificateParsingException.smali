.class public Ljava/security/cert/CertificateParsingException;
.super Ljava/security/cert/CertificateException;
.source "CertificateParsingException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x6edf6b75988dc22dL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 88
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method
