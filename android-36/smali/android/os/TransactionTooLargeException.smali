.class public Landroid/os/TransactionTooLargeException;
.super Landroid/os/RemoteException;
.source "TransactionTooLargeException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method
