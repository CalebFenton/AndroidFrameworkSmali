.class public final Landroid/app/appsearch/util/ExceptionUtil;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static blacklist handleException(Ljava/lang/Exception;)V
    .registers 2

    .line 1
    invoke-static {}, Landroid/app/appsearch/util/ExceptionUtil;->isItOkayToRethrowException()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 6
    .line 7
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 8
    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    check-cast p0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->rethrowRuntimeException(Ljava/lang/RuntimeException;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public static blacklist handleRemoteException(Landroid/os/RemoteException;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static blacklist isItOkayToRethrowException()Z
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method private static blacklist rethrowRuntimeException(Ljava/lang/RuntimeException;)V
    .registers 1

    .line 1
    throw p0
.end method
