.class public Lsun/net/www/protocol/mailto/MailToURLConnection;
.super Lsun/net/www/URLConnection;
.source "MailToURLConnection.java"


# instance fields
.field client:Lsun/net/smtp/SmtpClient;

.field private connectTimeout:I

.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;

.field permission:Ljava/security/Permission;

.field private readTimeout:I


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "u"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 54
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    #@5
    .line 45
    iput-object v2, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->is:Ljava/io/InputStream;

    #@7
    .line 46
    iput-object v2, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;

    #@9
    .line 50
    iput v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    #@b
    .line 51
    iput v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    #@d
    .line 56
    new-instance v0, Lsun/net/www/MessageHeader;

    #@f
    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    #@12
    .line 57
    .local v0, "props":Lsun/net/www/MessageHeader;
    const-string/jumbo v1, "content-type"

    #@15
    const-string/jumbo v2, "text/html"

    #@18
    invoke-virtual {v0, v1, v2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 58
    invoke-virtual {p0, v0}, Lsun/net/www/URLConnection;->setProperties(Lsun/net/www/MessageHeader;)V

    #@1e
    .line 53
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    new-instance v0, Lsun/net/smtp/SmtpClient;

    #@2
    iget v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    #@4
    invoke-direct {v0, v1}, Lsun/net/smtp/SmtpClient;-><init>(I)V

    #@7
    iput-object v0, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    #@9
    .line 87
    iget-object v0, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    #@b
    iget v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    #@d
    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@10
    .line 85
    return-void
.end method

.method public getConnectTimeout()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 126
    iget v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    #@3
    if-gez v1, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    #@8
    goto :goto_0
.end method

.method getFromAddress()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 66
    const-string/jumbo v3, "user.fromaddr"

    #@3
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 67
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_1

    #@9
    .line 68
    const-string/jumbo v3, "user.name"

    #@c
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 69
    if-eqz v2, :cond_2

    #@12
    .line 70
    const-string/jumbo v3, "mail.host"

    #@15
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 71
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_0

    #@1b
    .line 73
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v1

    #@23
    .line 77
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    const-string/jumbo v4, "@"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 82
    .end local v1    # "host":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    #@3c
    .line 79
    :cond_2
    const-string/jumbo v2, ""

    #@3f
    goto :goto_1

    #@40
    .line 74
    .restart local v1    # "host":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@41
    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 92
    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 93
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v1

    #@9
    .line 94
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->is:Ljava/io/InputStream;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 95
    new-instance v1, Ljava/io/IOException;

    #@f
    const-string/jumbo v2, "Cannot write output after reading input."

    #@12
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1

    #@19
    .line 97
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lsun/net/www/protocol/mailto/MailToURLConnection;->connect()V

    #@1c
    .line 99
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1e
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 100
    .local v0, "to":Ljava/lang/String;
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    #@28
    invoke-virtual {p0}, Lsun/net/www/protocol/mailto/MailToURLConnection;->getFromAddress()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Lsun/net/smtp/SmtpClient;->from(Ljava/lang/String;)V

    #@2f
    .line 101
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    #@31
    invoke-virtual {v1, v0}, Lsun/net/smtp/SmtpClient;->to(Ljava/lang/String;)V

    #@34
    .line 103
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    #@36
    invoke-virtual {v1}, Lsun/net/smtp/SmtpClient;->startMessage()Ljava/io/PrintStream;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;

    #@3c
    .line 104
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->os:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    return-object v1
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->permission:Ljava/security/Permission;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 110
    invoke-virtual {p0}, Lsun/net/www/protocol/mailto/MailToURLConnection;->connect()V

    #@7
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget-object v2, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->client:Lsun/net/smtp/SmtpClient;

    #@e
    invoke-virtual {v2}, Lsun/net/smtp/SmtpClient;->getMailHost()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ":"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const/16 v2, 0x19

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 112
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Ljava/net/SocketPermission;

    #@29
    const-string/jumbo v2, "connect"

    #@2c
    invoke-direct {v1, v0, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    iput-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->permission:Ljava/security/Permission;

    #@31
    .line 114
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->permission:Ljava/security/Permission;

    #@33
    return-object v1
.end method

.method public getReadTimeout()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 138
    iget v1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    #@3
    if-gez v1, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    #@8
    goto :goto_0
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 119
    if-gez p1, :cond_0

    #@2
    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeouts can\'t be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 121
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->connectTimeout:I

    #@d
    .line 118
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 131
    if-gez p1, :cond_0

    #@2
    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeouts can\'t be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 133
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/mailto/MailToURLConnection;->readTimeout:I

    #@d
    .line 130
    return-void
.end method
