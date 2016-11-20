.class public Landroid/net/LocalServerSocket;
.super Ljava/lang/Object;
.source "LocalServerSocket.java"


# static fields
.field private static final LISTEN_BACKLOG:I = 0x32


# instance fields
.field private final impl:Landroid/net/LocalSocketImpl;

.field private final localAddress:Landroid/net/LocalSocketAddress;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Landroid/net/LocalSocketImpl;

    #@5
    invoke-direct {v0, p1}, Landroid/net/LocalSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    #@8
    iput-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@a
    .line 65
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@c
    const/16 v1, 0x32

    #@e
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->listen(I)V

    #@11
    .line 66
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@13
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getSockAddress()Landroid/net/LocalSocketAddress;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    #@19
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Landroid/net/LocalSocketImpl;

    #@5
    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@a
    .line 45
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@c
    const/4 v1, 0x2

    #@d
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->create(I)V

    #@10
    .line 47
    new-instance v0, Landroid/net/LocalSocketAddress;

    #@12
    invoke-direct {v0, p1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    #@15
    iput-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    #@17
    .line 48
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@19
    iget-object v1, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    #@1b
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->bind(Landroid/net/LocalSocketAddress;)V

    #@1e
    .line 50
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@20
    const/16 v1, 0x32

    #@22
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->listen(I)V

    #@25
    .line 41
    return-void
.end method


# virtual methods
.method public accept()Landroid/net/LocalSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    new-instance v0, Landroid/net/LocalSocketImpl;

    #@2
    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    #@5
    .line 90
    .local v0, "acceptedImpl":Landroid/net/LocalSocketImpl;
    iget-object v1, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@7
    invoke-virtual {v1, v0}, Landroid/net/LocalSocketImpl;->accept(Landroid/net/LocalSocketImpl;)V

    #@a
    .line 92
    new-instance v1, Landroid/net/LocalSocket;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v1, v0, v2}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    #@10
    return-object v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    #@5
    .line 109
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocalSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    #@2
    return-object v0
.end method
