.class public Ljavax/security/cert/CertificateException;
.super Ljava/lang/Exception;
.source "CertificateException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x4fe5bb0f873bab0aL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 51
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
