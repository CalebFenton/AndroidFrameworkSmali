.class public Ljava/net/PortUnreachableException;
.super Ljava/net/SocketException;
.source "PortUnreachableException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x7570fd1b086d9bbbL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
