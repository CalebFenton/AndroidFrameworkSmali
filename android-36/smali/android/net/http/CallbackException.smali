.class public abstract Landroid/net/http/CallbackException;
.super Landroid/net/http/HttpException;
.source "CallbackException.java"


# direct methods
.method protected constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/net/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method
