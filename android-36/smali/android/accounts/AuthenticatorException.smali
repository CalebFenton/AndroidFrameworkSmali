.class public Landroid/accounts/AuthenticatorException;
.super Landroid/accounts/AccountsException;
.source "AuthenticatorException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/accounts/AccountsException;-><init>()V

    .line 22
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 30
    invoke-direct {p0, p1}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method
