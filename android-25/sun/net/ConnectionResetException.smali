.class public Lsun/net/ConnectionResetException;
.super Ljava/net/SocketException;
.source "ConnectionResetException.java"


# static fields
.field private static final serialVersionUID:J = -0x69ee863799d64ea4L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@3
    .line 39
    return-void
.end method
