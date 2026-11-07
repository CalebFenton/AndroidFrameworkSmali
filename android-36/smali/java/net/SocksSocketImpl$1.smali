.class Ljava/net/SocksSocketImpl$1;
.super Ljava/lang/Object;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/SocksSocketImpl;->privilegedConnect(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/net/SocksSocketImpl;

.field final synthetic blacklist val$host:Ljava/lang/String;

.field final synthetic blacklist val$port:I

.field final synthetic blacklist val$timeout:I


# direct methods
.method constructor blacklist <init>(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V
    .registers 5
    .param p1, "this$0"    # Ljava/net/SocksSocketImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    iput-object p2, p0, Ljava/net/SocksSocketImpl$1;->val$host:Ljava/lang/String;

    iput p3, p0, Ljava/net/SocksSocketImpl$1;->val$port:I

    iput p4, p0, Ljava/net/SocksSocketImpl$1;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/net/SocksSocketImpl$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    iget-object v1, p0, Ljava/net/SocksSocketImpl$1;->val$host:Ljava/lang/String;

    iget v2, p0, Ljava/net/SocksSocketImpl$1;->val$port:I

    iget v3, p0, Ljava/net/SocksSocketImpl$1;->val$timeout:I

    invoke-static {v0, v1, v2, v3}, Ljava/net/SocksSocketImpl;->-$$Nest$msuperConnectServer(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V

    .line 88
    iget-object v0, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    iget-object v1, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    invoke-virtual {v1}, Ljava/net/SocksSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-$$Nest$fputcmdIn(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)V

    .line 89
    iget-object v0, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    iget-object v1, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    invoke-virtual {v1}, Ljava/net/SocksSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-$$Nest$fputcmdOut(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method
