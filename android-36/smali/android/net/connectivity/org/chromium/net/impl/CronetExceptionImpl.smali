.class public Landroid/net/connectivity/org/chromium/net/impl/CronetExceptionImpl;
.super Landroid/net/connectivity/org/chromium/net/CronetException;
.source "CronetExceptionImpl.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/CronetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method
