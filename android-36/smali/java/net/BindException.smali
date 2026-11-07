.class public Ljava/net/BindException;
.super Ljava/net/SocketException;
.source "BindException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x5280e73f8c4accc7L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method
