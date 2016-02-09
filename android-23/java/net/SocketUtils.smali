.class public Ljava/net/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setCreated(Ljava/net/Socket;)V
    .locals 1
    .param p0, "s"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 30
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    #@3
    .line 29
    return-void
.end method
