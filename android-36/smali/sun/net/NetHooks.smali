.class public final Lsun/net/NetHooks;
.super Ljava/lang/Object;
.source "NetHooks.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 3
    .param p0, "fdObj"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public static blacklist beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 3
    .param p0, "fdObj"    # Ljava/io/FileDescriptor;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    return-void
.end method
