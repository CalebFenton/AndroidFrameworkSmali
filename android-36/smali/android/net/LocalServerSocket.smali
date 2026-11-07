.class public Landroid/net/LocalServerSocket;
.super Ljava/lang/Object;
.source "LocalServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o LISTEN_BACKLOG:I = 0x32


# instance fields
.field private final greylist-max-o impl:Landroid/net/LocalSocketImpl;

.field private final greylist-max-o localAddress:Landroid/net/LocalSocketAddress;


# direct methods
.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0, p1}, Landroid/net/LocalSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 68
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->listen(I)V

    .line 69
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getSockAddress()Landroid/net/LocalSocketAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    .line 70
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    iput-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 46
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->create(I)V

    .line 48
    new-instance v0, Landroid/net/LocalSocketAddress;

    invoke-direct {v0, p1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    .line 49
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    iget-object v1, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->bind(Landroid/net/LocalSocketAddress;)V

    .line 51
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->listen(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist accept()Landroid/net/LocalSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    .line 93
    .local v0, "acceptedImpl":Landroid/net/LocalSocketImpl;
    iget-object v1, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocketImpl;->accept(Landroid/net/LocalSocketImpl;)V

    .line 95
    invoke-static {v0}, Landroid/net/LocalSocket;->createLocalSocketForAccept(Landroid/net/LocalSocketImpl;)Landroid/net/LocalSocket;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 115
    return-void
.end method

.method public whitelist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalSocketAddress()Landroid/net/LocalSocketAddress;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    return-object v0
.end method
