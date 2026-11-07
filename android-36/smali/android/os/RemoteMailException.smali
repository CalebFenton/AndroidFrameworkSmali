.class public Landroid/os/RemoteMailException;
.super Ljava/lang/Exception;
.source "RemoteMailException.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
