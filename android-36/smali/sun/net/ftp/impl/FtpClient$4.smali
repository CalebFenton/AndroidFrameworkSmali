.class Lsun/net/ftp/impl/FtpClient$4;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/ftp/impl/FtpClient;->doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/Socket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method constructor blacklist <init>(Lsun/net/ftp/impl/FtpClient;)V
    .registers 2
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 945
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$4;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 945
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient$4;->run()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/Socket;
    .registers 3

    .line 948
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient$4;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-static {v1}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$fgetproxy(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    return-object v0
.end method
