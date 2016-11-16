.class Lsun/nio/ch/SocketAdaptor$2;
.super Ljava/lang/Object;
.source "SocketAdaptor.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/SocketAdaptor;->getOutputStream()Ljava/io/OutputStream;
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
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/SocketAdaptor;


# direct methods
.method constructor <init>(Lsun/nio/ch/SocketAdaptor;)V
    .locals 0
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;

    #@0
    .prologue
    .line 297
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor$2;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor$2;->this$0:Lsun/nio/ch/SocketAdaptor;

    #@2
    invoke-static {v0}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor$2;->run()Ljava/io/OutputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
