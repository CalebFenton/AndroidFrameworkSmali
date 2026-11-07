.class public Landroid/os/RemoteException;
.super Landroid/util/AndroidException;
.source "RemoteException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist rethrowAsRuntimeException()Ljava/lang/RuntimeException;
    .registers 2

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist rethrowFromSystemServer()Ljava/lang/RuntimeException;
    .registers 2

    .line 82
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_a

    .line 83
    new-instance v0, Landroid/os/DeadSystemRuntimeException;

    invoke-direct {v0}, Landroid/os/DeadSystemRuntimeException;-><init>()V

    throw v0

    .line 85
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
