.class Ljava/net/SocksSocketImpl$6;
.super Ljava/lang/Object;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/SocksSocketImpl;->socksBind(Ljava/net/InetSocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/SocksSocketImpl;


# direct methods
.method constructor <init>(Ljava/net/SocksSocketImpl;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/SocksSocketImpl;

    #@0
    .prologue
    .line 683
    iput-object p1, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 684
    invoke-virtual {p0}, Ljava/net/SocksSocketImpl$6;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    #@2
    new-instance v1, Ljava/net/Socket;

    #@4
    new-instance v2, Ljava/net/PlainSocketImpl;

    #@6
    invoke-direct {v2}, Ljava/net/PlainSocketImpl;-><init>()V

    #@9
    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    #@c
    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set2(Ljava/net/SocksSocketImpl;Ljava/net/Socket;)Ljava/net/Socket;

    #@f
    .line 686
    iget-object v0, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    #@11
    invoke-static {v0}, Ljava/net/SocksSocketImpl;->-get0(Ljava/net/SocksSocketImpl;)Ljava/net/Socket;

    #@14
    move-result-object v0

    #@15
    new-instance v1, Ljava/net/InetSocketAddress;

    #@17
    iget-object v2, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    #@19
    invoke-static {v2}, Ljava/net/SocksSocketImpl;->-get1(Ljava/net/SocksSocketImpl;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    iget-object v3, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    #@1f
    invoke-static {v3}, Ljava/net/SocksSocketImpl;->-get2(Ljava/net/SocksSocketImpl;)I

    #@22
    move-result v3

    #@23
    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@26
    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    #@29
    .line 687
    iget-object v0, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    #@2b
    iget-object v1, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    #@2d
    invoke-static {v1}, Ljava/net/SocksSocketImpl;->-get0(Ljava/net/SocksSocketImpl;)Ljava/net/Socket;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set0(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)Ljava/io/InputStream;

    #@38
    .line 688
    iget-object v0, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    #@3a
    iget-object v1, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    #@3c
    invoke-static {v1}, Ljava/net/SocksSocketImpl;->-get0(Ljava/net/SocksSocketImpl;)Ljava/net/Socket;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@43
    move-result-object v1

    #@44
    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set1(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    #@47
    .line 689
    const/4 v0, 0x0

    #@48
    return-object v0
.end method
