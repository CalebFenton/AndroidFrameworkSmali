.class public Landroid/net/http/NetworkExceptionWrapper;
.super Landroid/net/http/NetworkException;
.source "NetworkExceptionWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/connectivity/org/chromium/net/NetworkException;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkException;)V
    .registers 3
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/NetworkException;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/http/NetworkExceptionWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkException;Z)V

    .line 25
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkException;Z)V
    .registers 5
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/NetworkException;
    .param p2, "expectQuicException"    # Z

    .line 29
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/NetworkException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/net/http/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    iput-object p1, p0, Landroid/net/http/NetworkExceptionWrapper;->backend:Landroid/net/connectivity/org/chromium/net/NetworkException;

    .line 32
    if-nez p2, :cond_18

    instance-of v0, p1, Landroid/net/connectivity/org/chromium/net/QuicException;

    if-nez v0, :cond_10

    goto :goto_18

    .line 33
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Translating QuicException as NetworkException results in loss of information. Make sure you handle QuicException first. See the stacktrace for where the translation is being performed, and the cause for the exception being translated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/net/http/NetworkExceptionWrapper;->backend:Landroid/net/connectivity/org/chromium/net/NetworkException;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkException;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public whitelist isImmediatelyRetryable()Z
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/net/http/NetworkExceptionWrapper;->backend:Landroid/net/connectivity/org/chromium/net/NetworkException;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/NetworkException;->immediatelyRetryable()Z

    move-result v0

    return v0
.end method
