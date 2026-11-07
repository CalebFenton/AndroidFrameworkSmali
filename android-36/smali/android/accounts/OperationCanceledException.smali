.class public Landroid/accounts/OperationCanceledException;
.super Landroid/accounts/AccountsException;
.source "OperationCanceledException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/accounts/AccountsException;-><init>()V

    .line 21
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 29
    invoke-direct {p0, p1}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
