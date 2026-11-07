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
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/ProxySelector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lsun/net/www/protocol/ftp/FtpURLConnection;)V
    .registers 2
    .param p1, "this$0"    # Lsun/net/www/protocol/ftp/FtpURLConnection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 236
    invoke-virtual {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection$1;->run()Ljava/net/ProxySelector;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/ProxySelector;
    .registers 2

    .line 238
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    return-object v0
.end method
