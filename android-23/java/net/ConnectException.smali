.class public Ljava/net/ConnectException;
.super Ljava/net/SocketException;
.source "ConnectException.java"


# static fields
.field private static final serialVersionUID:J = 0x352be1e2a8f72fbfL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@3
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 48
    return-void
.end method
