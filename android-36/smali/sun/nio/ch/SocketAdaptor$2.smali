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
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/ch/SocketAdaptor;


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/SocketAdaptor;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor$2;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor$2;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v0}, Lsun/nio/ch/SocketAdaptor;->-$$Nest$fgetsc(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor$2;->run()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
