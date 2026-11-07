.class Landroid/os/BadTypeParcelableException;
.super Landroid/os/BadParcelableException;
.source "BadTypeParcelableException.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 26
    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    .line 27
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
