.class public Landroid/security/keystore/KeyPermanentlyInvalidatedException;
.super Ljava/security/InvalidKeyException;
.source "KeyPermanentlyInvalidatedException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 38
    const-string v0, "Key permanently invalidated"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method
