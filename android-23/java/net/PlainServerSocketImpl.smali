.class public Ljava/net/PlainServerSocketImpl;
.super Ljava/net/PlainSocketImpl;
.source "PlainServerSocketImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    #@3
    .line 32
    return-void
.end method


# virtual methods
.method protected create(Z)V
    .locals 2
    .param p1, "isStreaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    invoke-super {p0, p1}, Ljava/net/PlainSocketImpl;->create(Z)V

    #@3
    .line 39
    if-eqz p1, :cond_0

    #@5
    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@7
    const/4 v1, 0x4

    #@8
    invoke-virtual {p0, v1, v0}, Ljava/net/PlainServerSocketImpl;->setOption(ILjava/lang/Object;)V

    #@b
    .line 37
    :cond_0
    return-void
.end method
