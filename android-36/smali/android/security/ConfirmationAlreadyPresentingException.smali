.class public Landroid/security/ConfirmationAlreadyPresentingException;
.super Ljava/lang/Exception;
.source "ConfirmationAlreadyPresentingException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
