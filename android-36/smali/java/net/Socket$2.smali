.class Ljava/net/Socket$2;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/net/Socket;


# direct methods
.method constructor blacklist <init>(Ljava/net/Socket;)V
    .registers 2
    .param p1, "this$0"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 968
    iput-object p1, p0, Ljava/net/Socket$2;->this$0:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 970
    iget-object v0, p0, Ljava/net/Socket$2;->this$0:Ljava/net/Socket;

    iget-object v0, v0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInputStream()Ljava/io/InputStream;

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

    .line 968
    invoke-virtual {p0}, Ljava/net/Socket$2;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
