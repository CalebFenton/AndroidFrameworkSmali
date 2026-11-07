.class public abstract Landroid/net/connectivity/org/chromium/net/CallbackException;
.super Landroid/net/connectivity/org/chromium/net/CronetException;
.source "CallbackException.java"


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/CronetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
