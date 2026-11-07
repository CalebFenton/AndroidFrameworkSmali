.class public Landroid/security/identity/SessionTranscriptMismatchException;
.super Landroid/security/identity/IdentityCredentialException;
.source "SessionTranscriptMismatchException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Landroid/security/identity/IdentityCredentialException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/security/identity/IdentityCredentialException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method
