.class public Lsun/net/ConnectionResetException;
.super Ljava/net/SocketException;
.source "ConnectionResetException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x69ee863799d64ea4L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
