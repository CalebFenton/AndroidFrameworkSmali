.class Ljava/net/Socket$3;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
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
.field final synthetic this$0:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 947
    iput-object p1, p0, Ljava/net/Socket$3;->this$0:Ljava/net/Socket;

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
    .line 949
    iget-object v0, p0, Ljava/net/Socket$3;->this$0:Ljava/net/Socket;

    #@2
    iget-object v0, v0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@4
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getOutputStream()Ljava/io/OutputStream;

    #@7
    move-result-object v0

    #@8
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
    .line 948
    invoke-virtual {p0}, Ljava/net/Socket$3;->run()Ljava/io/OutputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
