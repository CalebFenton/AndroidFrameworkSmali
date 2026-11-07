.class public abstract Landroid/net/http/QuicException;
.super Landroid/net/http/NetworkException;
.source "QuicException.java"


# direct methods
.method protected constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/net/http/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method
