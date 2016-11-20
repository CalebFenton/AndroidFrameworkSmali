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
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/SocksSocketImpl;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/SocksSocketImpl;
    .param p2, "val$host"    # Ljava/lang/String;
    .param p3, "val$port"    # I
    .param p4, "val$timeout"    # I

    #@0
    .prologue
    .line 85
    iput-object p1, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    #@2
    iput-object p2, p0, Ljava/net/SocksSocketImpl$1;->val$host:Ljava/lang/String;

    #@4
    iput p3, p0, Ljava/net/SocksSocketImpl$1;->val$port:I

    #@6
    iput p4, p0, Ljava/net/SocksSocketImpl$1;->val$timeout:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
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
    .line 86
    invoke-virtual {p0}, Ljava/net/SocksSocketImpl$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    #@2
    iget-object v1, p0, Ljava/net/SocksSocketImpl$1;->val$host:Ljava/lang/String;

    #@4
    iget v2, p0, Ljava/net/SocksSocketImpl$1;->val$port:I

    #@6
    iget v3, p0, Ljava/net/SocksSocketImpl$1;->val$timeout:I

    #@8
    invoke-static {v0, v1, v2, v3}, Ljava/net/SocksSocketImpl;->-wrap0(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V

    #@b
    .line 88
    iget-object v0, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    #@d
    iget-object v1, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    #@f
    invoke-virtual {v1}, Ljava/net/AbstractPlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    #@12
    move-result-object v1

    #@13
    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set0(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)Ljava/io/InputStream;

    #@16
    .line 89
    iget-object v0, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    #@18
    iget-object v1, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    #@1a
    invoke-virtual {v1}, Ljava/net/AbstractPlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set1(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    #@21
    .line 90
    const/4 v0, 0x0

    #@22
    return-object v0
.end method
