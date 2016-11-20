.class Lsun/net/www/protocol/ftp/FtpURLConnection$1;
.super Ljava/lang/Object;
.source "FtpURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V
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
        "Ljava/net/ProxySelector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/protocol/ftp/FtpURLConnection;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/ftp/FtpURLConnection;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/protocol/ftp/FtpURLConnection;

    #@0
    .prologue
    .line 228
    iput-object p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$1;->this$0:Lsun/net/www/protocol/ftp/FtpURLConnection;

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
    .line 229
    invoke-virtual {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection$1;->run()Ljava/net/ProxySelector;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/ProxySelector;
    .locals 1

    #@0
    .prologue
    .line 230
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
