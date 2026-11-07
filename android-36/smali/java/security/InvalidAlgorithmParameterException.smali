.class public Ljava/security/InvalidAlgorithmParameterException;
.super Ljava/security/GeneralSecurityException;
.source "InvalidAlgorithmParameterException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x27c15c46e25bae70L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 96
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method
