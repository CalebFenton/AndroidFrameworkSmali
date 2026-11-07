.class public Landroid/os/BadParcelableException;
.super Landroid/util/AndroidRuntimeException;
.source "BadParcelableException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 34
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method
