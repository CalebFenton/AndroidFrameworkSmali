.class public Ljava/security/spec/InvalidParameterSpecException;
.super Ljava/security/GeneralSecurityException;
.source "InvalidParameterSpecException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0xd77cc344539982eL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 55
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
