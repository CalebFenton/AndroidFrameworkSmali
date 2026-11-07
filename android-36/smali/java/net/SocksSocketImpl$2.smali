.class Ljava/net/SocksSocketImpl$2;
.super Ljava/lang/Object;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/PasswordAuthentication;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/net/SocksSocketImpl;

.field final synthetic blacklist val$addr:Ljava/net/InetAddress;


# direct methods
.method constructor blacklist <init>(Ljava/net/SocksSocketImpl;Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "this$0"    # Ljava/net/SocksSocketImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Ljava/net/SocksSocketImpl$2;->this$0:Ljava/net/SocksSocketImpl;

    iput-object p2, p0, Ljava/net/SocksSocketImpl$2;->val$addr:Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-virtual {p0}, Ljava/net/SocksSocketImpl$2;->run()Ljava/net/PasswordAuthentication;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/PasswordAuthentication;
    .registers 8

    .line 162
    iget-object v0, p0, Ljava/net/SocksSocketImpl$2;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v0}, Ljava/net/SocksSocketImpl;->-$$Nest$fgetserver(Ljava/net/SocksSocketImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/net/SocksSocketImpl$2;->val$addr:Ljava/net/InetAddress;

    iget-object v0, p0, Ljava/net/SocksSocketImpl$2;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v0}, Ljava/net/SocksSocketImpl;->-$$Nest$fgetserverPort(Ljava/net/SocksSocketImpl;)I

    move-result v3

    const-string v5, "SOCKS authentication"

    const/4 v6, 0x0

    const-string v4, "SOCKS5"

    invoke-static/range {v1 .. v6}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    return-object v0
.end method
