.class public abstract Landroid/net/connectivity/org/chromium/net/CronetException;
.super Ljava/io/IOException;
.source "CronetException.java"


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
