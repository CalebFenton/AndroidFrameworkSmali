.class public Landroid/net/http/QuicExceptionWrapper;
.super Landroid/net/http/QuicException;
.source "QuicExceptionWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/http/NetworkExceptionWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/QuicException;)V
    .registers 4
    .param p1, "e"    # Landroid/net/connectivity/org/chromium/net/QuicException;

    .line 24
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/net/http/QuicException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    new-instance v0, Landroid/net/http/NetworkExceptionWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/net/http/NetworkExceptionWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkException;Z)V

    iput-object v0, p0, Landroid/net/http/QuicExceptionWrapper;->backend:Landroid/net/http/NetworkExceptionWrapper;

    .line 26
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 30
    iget-object v0, p0, Landroid/net/http/QuicExceptionWrapper;->backend:Landroid/net/http/NetworkExceptionWrapper;

    invoke-virtual {v0}, Landroid/net/http/NetworkExceptionWrapper;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public whitelist isImmediatelyRetryable()Z
    .registers 2

    .line 35
    iget-object v0, p0, Landroid/net/http/QuicExceptionWrapper;->backend:Landroid/net/http/NetworkExceptionWrapper;

    invoke-virtual {v0}, Landroid/net/http/NetworkExceptionWrapper;->isImmediatelyRetryable()Z

    move-result v0

    return v0
.end method
