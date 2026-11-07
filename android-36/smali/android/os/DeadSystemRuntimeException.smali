.class public Landroid/os/DeadSystemRuntimeException;
.super Ljava/lang/RuntimeException;
.source "DeadSystemRuntimeException.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    new-instance v0, Landroid/os/DeadSystemException;

    invoke-direct {v0}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
