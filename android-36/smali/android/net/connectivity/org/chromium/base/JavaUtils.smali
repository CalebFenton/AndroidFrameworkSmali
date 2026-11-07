.class public Landroid/net/connectivity/org/chromium/base/JavaUtils;
.super Ljava/lang/Object;
.source "JavaUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/RuntimeException;",
            "^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    throw p0
.end method
