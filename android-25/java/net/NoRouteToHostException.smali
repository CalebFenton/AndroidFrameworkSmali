.class public Ljava/net/NoRouteToHostException;
.super Ljava/net/SocketException;
.source "NoRouteToHostException.java"


# static fields
.field private static final serialVersionUID:J = -0x1a55747c3828c11eL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
    return-void
.end method
