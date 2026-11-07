.class public abstract Landroid/net/connectivity/org/chromium/net/QuicException;
.super Landroid/net/connectivity/org/chromium/net/NetworkException;
.source "QuicException.java"


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist getConnectionCloseSource()I
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist getQuicDetailedErrorCode()I
.end method
