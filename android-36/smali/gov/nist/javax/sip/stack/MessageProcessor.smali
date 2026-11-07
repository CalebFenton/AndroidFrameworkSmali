.class public abstract Lgov/nist/javax/sip/stack/MessageProcessor;
.super Ljava/lang/Object;
.source "MessageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final greylist IN6_ADDR_ANY:Ljava/lang/String; = "::0"

.field protected static final greylist IN_ADDR_ANY:Ljava/lang/String; = "0.0.0.0"


# instance fields
.field private greylist ipAddress:Ljava/net/InetAddress;

.field private greylist listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

.field private greylist port:I

.field private greylist savedIpAddress:Ljava/lang/String;

.field private greylist sentBy:Ljava/lang/String;

.field private greylist sentByHostPort:Lgov/nist/core/HostPort;

.field private greylist sentBySet:Z

.field protected greylist sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field protected greylist transport:Ljava/lang/String;


# direct methods
.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "transport"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->transport:Ljava/lang/String;

    .line 104
    return-void
.end method

.method protected constructor greylist <init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .registers 5
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .param p4, "transactionStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 115
    invoke-direct {p0, p3}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1, p2, p4}, Lgov/nist/javax/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 117
    return-void
.end method

.method public static greylist getDefaultPort(Ljava/lang/String;)I
    .registers 2
    .param p0, "transport"    # Ljava/lang/String;

    .line 351
    const-string v0, "TLS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x13c5

    goto :goto_d

    :cond_b
    const/16 v0, 0x13c4

    :goto_d
    return v0
.end method


# virtual methods
.method public abstract greylist createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist getDefaultTargetPort()I
.end method

.method public greylist getIpAddress()Ljava/net/InetAddress;
    .registers 2

    .line 220
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;
    .registers 4

    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v0, :cond_32

    .line 188
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 189
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListeningPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning null listeningpoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 194
    :cond_32
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    return-object v0
.end method

.method public abstract greylist getMaximumMessageSize()I
.end method

.method public greylist getPort()I
    .registers 2

    .line 155
    iget v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->port:I

    return v0
.end method

.method public abstract greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
.end method

.method public greylist getSavedIpAddress()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->savedIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSentBy()Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    if-eqz v0, :cond_10

    .line 264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    .line 266
    :cond_10
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getViaHeader()Lgov/nist/javax/sip/header/Via;
    .registers 5

    .line 166
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 167
    .local v1, "via":Lgov/nist/javax/sip/header/Via;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    if-eqz v2, :cond_17

    .line 168
    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    .line 169
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    goto :goto_38

    .line 171
    :cond_17
    new-instance v2, Lgov/nist/core/Host;

    invoke-direct {v2}, Lgov/nist/core/Host;-><init>()V

    .line 172
    .local v2, "host":Lgov/nist/core/Host;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/Via;->setHost(Lgov/nist/core/Host;)V

    .line 174
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    .line 175
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_38} :catch_3e
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_38} :catch_39

    .line 177
    .end local v2    # "host":Lgov/nist/core/Host;
    :goto_38
    return-object v1

    .line 181
    .end local v1    # "via":Lgov/nist/javax/sip/header/Via;
    :catch_39
    move-exception v1

    .line 182
    .local v1, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 183
    return-object v0

    .line 178
    .end local v1    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_3e
    move-exception v1

    .line 179
    .local v1, "ex":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 180
    return-object v0
.end method

.method public abstract greylist inUse()Z
.end method

.method public final greylist initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .registers 7
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transactionStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 130
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 131
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->savedIpAddress:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    .line 133
    iput p2, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->port:I

    .line 134
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    .line 135
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p2}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 137
    return-void
.end method

.method public abstract greylist isSecure()Z
.end method

.method public greylist isSentBySet()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBySet:Z

    return v0
.end method

.method public abstract whitelist test-api run()V
.end method

.method protected greylist setIpAddress(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "ipAddress"    # Ljava/net/InetAddress;

    .line 226
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 227
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    .line 228
    return-void
.end method

.method public greylist setListeningPoint(Lgov/nist/javax/sip/ListeningPointImpl;)V
    .registers 5
    .param p1, "lp"    # Lgov/nist/javax/sip/ListeningPointImpl;

    .line 198
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 199
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListeningPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listeningPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 203
    :cond_32
    invoke-virtual {p1}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v1

    if-eq v0, v1, :cond_4a

    .line 204
    nop

    .line 205
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "lp mismatch with provider"

    invoke-static {v1, v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    .line 206
    :cond_4a
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 208
    return-void
.end method

.method public greylist setSentBy(Ljava/lang/String;)V
    .registers 7
    .param p1, "sentBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 238
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "ind":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 240
    new-instance v1, Lgov/nist/core/HostPort;

    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    .line 241
    iget-object v1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    new-instance v2, Lgov/nist/core/Host;

    invoke-direct {v2, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    goto :goto_41

    .line 243
    :cond_1b
    new-instance v1, Lgov/nist/core/HostPort;

    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    .line 244
    iget-object v1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    new-instance v2, Lgov/nist/core/Host;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 245
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "portStr":Ljava/lang/String;
    :try_start_37
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 248
    .local v2, "port":I
    iget-object v3, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v3, v2}, Lgov/nist/core/HostPort;->setPort(I)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_40} :catch_47

    .line 251
    .end local v2    # "port":I
    nop

    .line 253
    .end local v1    # "portStr":Ljava/lang/String;
    :goto_41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBySet:Z

    .line 254
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    .line 256
    return-void

    .line 249
    .restart local v1    # "portStr":Ljava/lang/String;
    :catch_47
    move-exception v2

    .line 250
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "Bad format encountered at "

    invoke-direct {v3, v4, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public abstract greylist start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist stop()V
.end method
