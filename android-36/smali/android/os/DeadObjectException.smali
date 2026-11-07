.class public Landroid/os/DeadObjectException;
.super Landroid/os/RemoteException;
.source "DeadObjectException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 52
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
