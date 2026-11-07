.class public Landroid/security/identity/UnknownAuthenticationKeyException;
.super Landroid/security/identity/IdentityCredentialException;
.source "UnknownAuthenticationKeyException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Landroid/security/identity/IdentityCredentialException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/security/identity/IdentityCredentialException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method
