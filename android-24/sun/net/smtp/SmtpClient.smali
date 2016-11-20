.class public Lsun/net/smtp/SmtpClient;
.super Lsun/net/TransferProtocolClient;
.source "SmtpClient.java"


# instance fields
.field mailhost:Ljava/lang/String;

.field message:Lsun/net/smtp/SmtpPrintStream;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lsun/net/smtp/SmtpClient;-><init>(Ljava/lang/String;)V

    #@4
    .line 178
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-direct {p0}, Lsun/net/TransferProtocolClient;-><init>()V

    #@3
    .line 184
    invoke-virtual {p0, p1}, Lsun/net/NetworkClient;->setConnectTimeout(I)V

    #@6
    .line 188
    :try_start_0
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@8
    const-string/jumbo v2, "mail.host"

    #@b
    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@e
    .line 187
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@16
    .line 189
    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 190
    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@1c
    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 191
    return-void

    #@20
    .line 193
    :catch_0
    move-exception v0

    #@21
    .line 196
    :cond_0
    :try_start_1
    const-string/jumbo v1, "localhost"

    #@24
    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@26
    .line 197
    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@28
    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    .line 182
    :goto_0
    return-void

    #@2c
    .line 198
    :catch_1
    move-exception v0

    #@2d
    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mailhost"

    #@30
    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@32
    .line 200
    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@34
    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V

    #@37
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Lsun/net/TransferProtocolClient;-><init>()V

    #@3
    .line 150
    if-eqz p1, :cond_0

    #@5
    .line 152
    :try_start_0
    invoke-direct {p0, p1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V

    #@8
    .line 153
    iput-object p1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 154
    return-void

    #@b
    .line 155
    :catch_0
    move-exception v0

    #@c
    .line 161
    :cond_0
    :try_start_1
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@e
    const-string/jumbo v2, "mail.host"

    #@11
    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@14
    .line 160
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/String;

    #@1a
    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@1c
    .line 162
    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 163
    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@22
    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    .line 164
    return-void

    #@26
    .line 166
    :catch_1
    move-exception v0

    #@27
    .line 169
    :cond_1
    :try_start_2
    const-string/jumbo v1, "localhost"

    #@2a
    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@2c
    .line 170
    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@2e
    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@31
    .line 148
    :goto_0
    return-void

    #@32
    .line 171
    :catch_2
    move-exception v0

    #@33
    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mailhost"

    #@36
    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@38
    .line 173
    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@3a
    invoke-direct {p0, v1}, Lsun/net/smtp/SmtpClient;->openServer(Ljava/lang/String;)V

    #@3d
    goto :goto_0
.end method

.method private openServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    iput-object p1, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@2
    .line 128
    iget-object v0, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@4
    const/16 v1, 0x19

    #@6
    invoke-virtual {p0, v0, v1}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    #@9
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "helo "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, "\r\n"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    const/16 v1, 0xfa

    #@2e
    invoke-virtual {p0, v0, v1}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    #@31
    .line 126
    return-void
.end method

.method private toCanonical(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0xfa

    #@2
    .line 70
    const-string/jumbo v0, "<"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "rcpt to: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, "\r\n"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, v0, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    #@29
    .line 69
    :goto_0
    return-void

    #@2a
    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v1, "rcpt to: <"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    const-string/jumbo v1, ">\r\n"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {p0, v0, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    #@48
    goto :goto_0
.end method


# virtual methods
.method closeMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 144
    iget-object v0, p0, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;

    #@6
    invoke-virtual {v0}, Lsun/net/smtp/SmtpPrintStream;->close()V

    #@9
    .line 142
    :cond_0
    return-void
.end method

.method public closeServer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Lsun/net/NetworkClient;->serverIsOpen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 54
    invoke-virtual {p0}, Lsun/net/smtp/SmtpClient;->closeMessage()V

    #@9
    .line 55
    const-string/jumbo v0, "QUIT\r\n"

    #@c
    const/16 v1, 0xdd

    #@e
    invoke-virtual {p0, v0, v1}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    #@11
    .line 56
    invoke-super {p0}, Lsun/net/TransferProtocolClient;->closeServer()V

    #@14
    .line 52
    :cond_0
    return-void
.end method

.method public from(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0xfa

    #@2
    .line 119
    const-string/jumbo v0, "<"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "mail from: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, "\r\n"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, v0, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    #@29
    .line 118
    :goto_0
    return-void

    #@2a
    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v1, "mail from: <"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    const-string/jumbo v1, ">\r\n"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {p0, v0, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    #@48
    goto :goto_0
.end method

.method getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 209
    sget-object v0, Lsun/net/smtp/SmtpClient;->encoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMailHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lsun/net/smtp/SmtpClient;->mailhost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method issueCommand(Ljava/lang/String;I)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lsun/net/TransferProtocolClient;->sendServer(Ljava/lang/String;)V

    #@3
    .line 63
    :cond_0
    invoke-virtual {p0}, Lsun/net/TransferProtocolClient;->readServerResponse()I

    #@6
    move-result v0

    #@7
    .local v0, "reply":I
    if-eq v0, p2, :cond_1

    #@9
    .line 64
    const/16 v1, 0xdc

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 65
    new-instance v1, Lsun/net/smtp/SmtpProtocolException;

    #@f
    invoke-virtual {p0}, Lsun/net/TransferProtocolClient;->getResponseString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, v2}, Lsun/net/smtp/SmtpProtocolException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 60
    :cond_1
    return-void
.end method

.method public startMessage()Ljava/io/PrintStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    const-string/jumbo v1, "data\r\n"

    #@3
    const/16 v2, 0x162

    #@5
    invoke-virtual {p0, v1, v2}, Lsun/net/smtp/SmtpClient;->issueCommand(Ljava/lang/String;I)V

    #@8
    .line 135
    :try_start_0
    new-instance v1, Lsun/net/smtp/SmtpPrintStream;

    #@a
    iget-object v2, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@c
    invoke-direct {v1, v2, p0}, Lsun/net/smtp/SmtpPrintStream;-><init>(Ljava/io/OutputStream;Lsun/net/smtp/SmtpClient;)V

    #@f
    iput-object v1, p0, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 139
    iget-object v1, p0, Lsun/net/smtp/SmtpClient;->message:Lsun/net/smtp/SmtpPrintStream;

    #@13
    return-object v1

    #@14
    .line 136
    :catch_0
    move-exception v0

    #@15
    .line 137
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    sget-object v3, Lsun/net/smtp/SmtpClient;->encoding:Ljava/lang/String;

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " encoding not found"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@30
    throw v1
.end method

.method public to(Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x28

    #@2
    .line 77
    const/4 v6, 0x0

    #@3
    .line 78
    .local v6, "st":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    .line 79
    .local v3, "limit":I
    const/4 v5, 0x0

    #@8
    .line 80
    .local v5, "pos":I
    const/4 v2, 0x0

    #@9
    .line 81
    .local v2, "lastnonsp":I
    const/4 v4, 0x0

    #@a
    .line 82
    .local v4, "parendepth":I
    const/4 v1, 0x0

    #@b
    .line 83
    .local v1, "ignore":Z
    :goto_0
    if-ge v5, v3, :cond_c

    #@d
    .line 84
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 85
    .local v0, "c":I
    if-lez v4, :cond_4

    #@13
    .line 86
    if-ne v0, v8, :cond_2

    #@15
    .line 87
    add-int/lit8 v4, v4, 0x1

    #@17
    .line 90
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    #@19
    .line 91
    if-le v2, v6, :cond_3

    #@1b
    .line 92
    const/4 v1, 0x1

    #@1c
    .line 112
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 88
    :cond_2
    const/16 v7, 0x29

    #@21
    if-ne v0, v7, :cond_0

    #@23
    .line 89
    add-int/lit8 v4, v4, -0x1

    #@25
    goto :goto_1

    #@26
    .line 94
    :cond_3
    add-int/lit8 v6, v5, 0x1

    #@28
    goto :goto_2

    #@29
    .line 95
    :cond_4
    if-ne v0, v8, :cond_5

    #@2b
    .line 96
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_2

    #@2e
    .line 97
    :cond_5
    const/16 v7, 0x3c

    #@30
    if-ne v0, v7, :cond_6

    #@32
    .line 98
    add-int/lit8 v2, v5, 0x1

    #@34
    move v6, v2

    #@35
    goto :goto_2

    #@36
    .line 99
    :cond_6
    const/16 v7, 0x3e

    #@38
    if-ne v0, v7, :cond_7

    #@3a
    .line 100
    const/4 v1, 0x1

    #@3b
    goto :goto_2

    #@3c
    .line 101
    :cond_7
    const/16 v7, 0x2c

    #@3e
    if-ne v0, v7, :cond_9

    #@40
    .line 102
    if-le v2, v6, :cond_8

    #@42
    .line 103
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    invoke-direct {p0, v7}, Lsun/net/smtp/SmtpClient;->toCanonical(Ljava/lang/String;)V

    #@49
    .line 104
    :cond_8
    add-int/lit8 v6, v5, 0x1

    #@4b
    .line 105
    const/4 v1, 0x0

    #@4c
    goto :goto_2

    #@4d
    .line 107
    :cond_9
    const/16 v7, 0x20

    #@4f
    if-le v0, v7, :cond_a

    #@51
    if-eqz v1, :cond_b

    #@53
    .line 109
    :cond_a
    if-ne v6, v5, :cond_1

    #@55
    .line 110
    add-int/lit8 v6, v6, 0x1

    #@57
    goto :goto_2

    #@58
    .line 108
    :cond_b
    add-int/lit8 v2, v5, 0x1

    #@5a
    goto :goto_2

    #@5b
    .line 114
    .end local v0    # "c":I
    :cond_c
    if-le v2, v6, :cond_d

    #@5d
    .line 115
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    invoke-direct {p0, v7}, Lsun/net/smtp/SmtpClient;->toCanonical(Ljava/lang/String;)V

    #@64
    .line 76
    :cond_d
    return-void
.end method
