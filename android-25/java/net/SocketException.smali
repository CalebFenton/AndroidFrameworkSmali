.class public Ljava/net/SocketException;
.super Ljava/io/IOException;
.source "SocketException.java"


# static fields
.field private static final serialVersionUID:J = -0x5260763abee0a196L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 58
    return-void
.end method
