.class public final Lsun/net/NetHooks;
.super Ljava/lang/Object;
.source "NetHooks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 0
    .param p0, "fdObj"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    return-void
.end method

.method public static beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 0
    .param p0, "fdObj"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    return-void
.end method
