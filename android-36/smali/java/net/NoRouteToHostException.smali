.class public Ljava/net/NoRouteToHostException;
.super Ljava/net/SocketException;
.source "NoRouteToHostException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x1a55747c3828c11eL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
