.class Lsun/net/ftp/impl/FtpClient$2;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/ftp/impl/FtpClient;->openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/Socket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method constructor <init>(Lsun/net/ftp/impl/FtpClient;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    #@0
    .prologue
    .line 640
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$2;->this$0:Lsun/net/ftp/impl/FtpClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 642
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient$2;->run()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/Socket;
    .locals 2

    #@0
    .prologue
    .line 643
    new-instance v0, Ljava/net/Socket;

    #@2
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient$2;->this$0:Lsun/net/ftp/impl/FtpClient;

    #@4
    invoke-static {v1}, Lsun/net/ftp/impl/FtpClient;->-get4(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Proxy;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    #@b
    return-object v0
.end method
