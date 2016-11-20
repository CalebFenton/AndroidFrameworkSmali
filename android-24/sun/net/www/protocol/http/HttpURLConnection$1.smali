.class final Lsun/net/www/protocol/http/HttpURLConnection$1;
.super Ljava/lang/Object;
.source "HttpURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/PasswordAuthentication;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$addr:Ljava/net/InetAddress;

.field final synthetic val$authType:Ljava/net/Authenticator$RequestorType;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$prompt:Ljava/lang/String;

.field final synthetic val$protocol:Ljava/lang/String;

.field final synthetic val$scheme:Ljava/lang/String;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Authenticator$RequestorType;)V
    .locals 0
    .param p1, "val$host"    # Ljava/lang/String;
    .param p2, "val$url"    # Ljava/net/URL;
    .param p3, "val$addr"    # Ljava/net/InetAddress;
    .param p4, "val$port"    # I
    .param p5, "val$protocol"    # Ljava/lang/String;
    .param p6, "val$prompt"    # Ljava/lang/String;
    .param p7, "val$scheme"    # Ljava/lang/String;
    .param p8, "val$authType"    # Ljava/net/Authenticator$RequestorType;

    #@0
    .prologue
    .line 391
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$host:Ljava/lang/String;

    #@2
    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$url:Ljava/net/URL;

    #@4
    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$addr:Ljava/net/InetAddress;

    #@6
    iput p4, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$port:I

    #@8
    iput-object p5, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$protocol:Ljava/lang/String;

    #@a
    iput-object p6, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$prompt:Ljava/lang/String;

    #@c
    iput-object p7, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$scheme:Ljava/lang/String;

    #@e
    iput-object p8, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$authType:Ljava/net/Authenticator$RequestorType;

    #@10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@13
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 392
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection$1;->run()Ljava/net/PasswordAuthentication;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/PasswordAuthentication;
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x12c

    #@2
    .line 393
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get1()Lsun/util/logging/PlatformLogger;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, v9}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 394
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get1()Lsun/util/logging/PlatformLogger;

    #@f
    move-result-object v0

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Requesting Authentication: host ="

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$host:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " url = "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$url:Ljava/net/URL;

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@36
    .line 397
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$host:Ljava/lang/String;

    #@38
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$addr:Ljava/net/InetAddress;

    #@3a
    iget v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$port:I

    #@3c
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$protocol:Ljava/lang/String;

    #@3e
    .line 398
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$prompt:Ljava/lang/String;

    #@40
    iget-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$scheme:Ljava/lang/String;

    #@42
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$url:Ljava/net/URL;

    #@44
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection$1;->val$authType:Ljava/net/Authenticator$RequestorType;

    #@46
    .line 396
    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    #@49
    move-result-object v8

    #@4a
    .line 399
    .local v8, "pass":Ljava/net/PasswordAuthentication;
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get1()Lsun/util/logging/PlatformLogger;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0, v9}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_1

    #@54
    .line 400
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get1()Lsun/util/logging/PlatformLogger;

    #@57
    move-result-object v1

    #@58
    new-instance v0, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v2, "Authentication returned: "

    #@60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    if-eqz v8, :cond_2

    #@66
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v1, v0}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    #@75
    .line 402
    :cond_1
    return-object v8

    #@76
    .line 400
    :cond_2
    const-string/jumbo v0, "null"

    #@79
    goto :goto_0
.end method
