.class public abstract Lgov/nist/javax/sip/stack/MessageProcessor;
.super Ljava/lang/Object;
.source "MessageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final IN6_ADDR_ANY:Ljava/lang/String; = "::0"

.field protected static final IN_ADDR_ANY:Ljava/lang/String; = "0.0.0.0"


# instance fields
.field private ipAddress:Ljava/net/InetAddress;

.field private listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

.field private port:I

.field private savedIpAddress:Ljava/lang/String;

.field private sentBy:Ljava/lang/String;

.field private sentByHostPort:Lgov/nist/core/HostPort;

.field private sentBySet:Z

.field protected sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field protected transport:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->transport:Ljava/lang/String;

    #@5
    .line 102
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .param p4, "transactionStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@0
    .prologue
    .line 115
    invoke-direct {p0, p3}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/lang/String;)V

    #@3
    .line 116
    invoke-virtual {p0, p1, p2, p4}, Lgov/nist/javax/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V

    #@6
    .line 114
    return-void
.end method

.method public static getDefaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    .line 351
    const-string/jumbo v0, "TLS"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/16 v0, 0x13c5

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/16 v0, 0x13c4

    #@e
    goto :goto_0
.end method


# virtual methods
.method public abstract createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultTargetPort()I
.end method

.method public getIpAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;
    .locals 3

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 188
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 189
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@15
    move-result-object v0

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "getListeningPoint"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 190
    const-string/jumbo v2, " returning null listeningpoint"

    #@29
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@34
    .line 194
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@36
    return-object v0
.end method

.method public abstract getMaximumMessageSize()I
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 155
    iget v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->port:I

    #@2
    return v0
.end method

.method public abstract getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
.end method

.method public getSavedIpAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->savedIpAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSentBy()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@a
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    #@10
    .line 266
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->transport:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 166
    :try_start_0
    new-instance v3, Lgov/nist/javax/sip/header/Via;

    #@3
    invoke-direct {v3}, Lgov/nist/javax/sip/header/Via;-><init>()V

    #@6
    .line 167
    .local v3, "via":Lgov/nist/javax/sip/header/Via;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 168
    iget-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@c
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    #@f
    .line 169
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    #@16
    .line 177
    :goto_0
    return-object v3

    #@17
    .line 171
    :cond_0
    new-instance v2, Lgov/nist/core/Host;

    #@19
    invoke-direct {v2}, Lgov/nist/core/Host;-><init>()V

    #@1c
    .line 172
    .local v2, "host":Lgov/nist/core/Host;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v2, v4}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    #@27
    .line 173
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/header/Via;->setHost(Lgov/nist/core/Host;)V

    #@2a
    .line 174
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    #@2d
    move-result v4

    #@2e
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    #@31
    .line 175
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    #@38
    goto :goto_0

    #@39
    .line 178
    .end local v2    # "host":Lgov/nist/core/Host;
    .end local v3    # "via":Lgov/nist/javax/sip/header/Via;
    :catch_0
    move-exception v0

    #@3a
    .line 179
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    #@3d
    .line 180
    return-object v5

    #@3e
    .line 181
    .end local v0    # "ex":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    #@3f
    .line 182
    .local v1, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    #@42
    .line 183
    return-object v5
.end method

.method public abstract inUse()Z
.end method

.method public final initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .locals 3
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transactionStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@0
    .prologue
    .line 130
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    .line 131
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->savedIpAddress:Ljava/lang/String;

    #@8
    .line 132
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    #@a
    .line 133
    iput p2, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->port:I

    #@c
    .line 134
    new-instance v0, Lgov/nist/core/HostPort;

    #@e
    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    #@11
    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@13
    .line 135
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@15
    new-instance v1, Lgov/nist/core/Host;

    #@17
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@21
    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@23
    invoke-virtual {v0, p2}, Lgov/nist/core/HostPort;->setPort(I)V

    #@26
    .line 128
    return-void
.end method

.method public abstract isSecure()Z
.end method

.method public isSentBySet()Z
    .locals 1

    #@0
    .prologue
    .line 338
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBySet:Z

    #@2
    return v0
.end method

.method public abstract run()V
.end method

.method protected setIpAddress(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "ipAddress"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@2
    new-instance v1, Lgov/nist/core/Host;

    #@4
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@e
    .line 227
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    #@10
    .line 225
    return-void
.end method

.method public setListeningPoint(Lgov/nist/javax/sip/ListeningPointImpl;)V
    .locals 3
    .param p1, "lp"    # Lgov/nist/javax/sip/ListeningPointImpl;

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 199
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@11
    move-result-object v0

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "setListeningPoint"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 200
    const-string/jumbo v2, " listeningPoint = "

    #@25
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@34
    .line 203
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    #@37
    move-result v0

    #@38
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    #@3b
    move-result v1

    #@3c
    if-eq v0, v1, :cond_1

    #@3e
    .line 205
    const-string/jumbo v0, "lp mismatch with provider"

    #@41
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@48
    move-result-object v1

    #@49
    .line 204
    invoke-static {v0, v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    #@4c
    .line 206
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@4e
    .line 197
    return-void
.end method

.method public setSentBy(Ljava/lang/String;)V
    .locals 7
    .param p1, "sentBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    const-string/jumbo v4, ":"

    #@3
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6
    move-result v1

    #@7
    .line 239
    .local v1, "ind":I
    const/4 v4, -0x1

    #@8
    if-ne v1, v4, :cond_0

    #@a
    .line 240
    new-instance v4, Lgov/nist/core/HostPort;

    #@c
    invoke-direct {v4}, Lgov/nist/core/HostPort;-><init>()V

    #@f
    iput-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@11
    .line 241
    iget-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@13
    new-instance v5, Lgov/nist/core/Host;

    #@15
    invoke-direct {v5, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {v4, v5}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@1b
    .line 253
    :goto_0
    const/4 v4, 0x1

    #@1c
    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBySet:Z

    #@1e
    .line 254
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    #@20
    .line 236
    return-void

    #@21
    .line 243
    :cond_0
    new-instance v4, Lgov/nist/core/HostPort;

    #@23
    invoke-direct {v4}, Lgov/nist/core/HostPort;-><init>()V

    #@26
    iput-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@28
    .line 244
    iget-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@2a
    new-instance v5, Lgov/nist/core/Host;

    #@2c
    const/4 v6, 0x0

    #@2d
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-direct {v5, v6}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v4, v5}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@37
    .line 245
    add-int/lit8 v4, v1, 0x1

    #@39
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 247
    .local v3, "portStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@40
    move-result v2

    #@41
    .line 248
    .local v2, "port":I
    iget-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    #@43
    invoke-virtual {v4, v2}, Lgov/nist/core/HostPort;->setPort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 249
    .end local v2    # "port":I
    :catch_0
    move-exception v0

    #@48
    .line 250
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/text/ParseException;

    #@4a
    const-string/jumbo v5, "Bad format encountered at "

    #@4d
    invoke-direct {v4, v5, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@50
    throw v4
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
