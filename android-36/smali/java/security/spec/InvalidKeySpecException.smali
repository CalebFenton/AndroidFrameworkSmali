.class public Ljava/security/spec/InvalidKeySpecException;
.super Ljava/security/GeneralSecurityException;
.source "InvalidKeySpecException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x31366ae64eda869aL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 93
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method
