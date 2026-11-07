.class public Ljavax/crypto/IllegalBlockSizeException;
.super Ljava/security/GeneralSecurityException;
.source "IllegalBlockSizeException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x1b4598cb70b14d28L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
