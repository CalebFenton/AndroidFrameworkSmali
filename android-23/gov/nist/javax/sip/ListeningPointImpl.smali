.class public Lgov/nist/javax/sip/ListeningPointImpl;
.super Ljava/lang/Object;
.source "ListeningPointImpl.java"

# interfaces
.implements Ljavax/sip/ListeningPoint;
.implements Lgov/nist/javax/sip/ListeningPointExt;


# instance fields
.field protected messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

.field port:I

.field protected sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

.field protected sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field protected transport:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljavax/sip/SipStack;ILjava/lang/String;)V
    .locals 0
    .param p1, "sipStack"    # Ljavax/sip/SipStack;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    check-cast p1, Lgov/nist/javax/sip/SipStackImpl;

    #@5
    .end local p1    # "sipStack":Ljavax/sip/SipStack;
    iput-object p1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@7
    .line 134
    iput p2, p0, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    #@9
    .line 135
    iput-object p3, p0, Lgov/nist/javax/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    #@b
    .line 131
    return-void
.end method

.method public static makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@5
    .line 93
    const-string/jumbo v1, ":"

    #@8
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@f
    move-result-object v0

    #@10
    .line 95
    const-string/jumbo v1, "/"

    #@13
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 146
    new-instance v0, Lgov/nist/javax/sip/ListeningPointImpl;

    #@2
    iget-object v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@4
    iget v2, p0, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/ListeningPointImpl;-><init>(Ljavax/sip/SipStack;ILjava/lang/String;)V

    #@a
    .line 147
    .local v0, "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c
    iput-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@e
    .line 148
    return-object v0
.end method

.method public createContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 8

    #@0
    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 228
    .local v3, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    #@7
    move-result v4

    #@8
    .line 229
    .local v4, "port":I
    new-instance v5, Lgov/nist/javax/sip/address/SipUri;

    #@a
    invoke-direct {v5}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    #@d
    .line 230
    .local v5, "sipURI":Ljavax/sip/address/SipURI;
    invoke-interface {v5, v3}, Ljavax/sip/address/SipURI;->setHost(Ljava/lang/String;)V

    #@10
    .line 231
    invoke-interface {v5, v4}, Ljavax/sip/address/SipURI;->setPort(I)V

    #@13
    .line 232
    iget-object v6, p0, Lgov/nist/javax/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    #@15
    invoke-interface {v5, v6}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V

    #@18
    .line 233
    new-instance v1, Lgov/nist/javax/sip/header/Contact;

    #@1a
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    #@1d
    .line 234
    .local v1, "contact":Lgov/nist/javax/sip/header/Contact;
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@1f
    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@22
    .line 235
    .local v0, "address":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    #@25
    .line 236
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/Contact;->setAddress(Ljavax/sip/address/Address;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 238
    return-object v1

    #@29
    .line 239
    .end local v0    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    .end local v1    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "sipURI":Ljavax/sip/address/SipURI;
    :catch_0
    move-exception v2

    #@2a
    .line 240
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "Unexpected exception"

    #@2d
    iget-object v7, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2f
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@32
    move-result-object v7

    #@33
    invoke-static {v6, v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    #@36
    .line 241
    const/4 v6, 0x0

    #@37
    return-object v6
.end method

.method public createViaHeader()Ljavax/sip/header/ViaHeader;
    .locals 1

    #@0
    .prologue
    .line 260
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected getKey()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 106
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    #@6
    iget-object v2, p0, Lgov/nist/javax/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    #@8
    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/ListeningPointImpl;->makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@2
    return-object v0
.end method

.method public getSentBy()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSentBy()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isSentBySet()Z
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->isSentBySet()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected removeSipProvider()V
    .locals 1

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@3
    .line 120
    return-void
.end method

.method public sendHeartbeat(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    new-instance v2, Lgov/nist/core/HostPort;

    #@2
    invoke-direct {v2}, Lgov/nist/core/HostPort;-><init>()V

    #@5
    .line 249
    .local v2, "targetHostPort":Lgov/nist/core/HostPort;
    new-instance v3, Lgov/nist/core/Host;

    #@7
    invoke-direct {v3, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v2, v3}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@d
    .line 250
    invoke-virtual {v2, p2}, Lgov/nist/core/HostPort;->setPort(I)V

    #@10
    .line 251
    iget-object v3, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@12
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@15
    move-result-object v0

    #@16
    .line 252
    .local v0, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    new-instance v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@18
    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    #@1b
    .line 253
    .local v1, "siprequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->setNullRequest()V

    #@1e
    .line 254
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@21
    .line 246
    return-void
.end method

.method public setSentBy(Ljava/lang/String;)V
    .locals 1
    .param p1, "sentBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/MessageProcessor;->setSentBy(Ljava/lang/String;)V

    #@5
    .line 201
    return-void
.end method

.method protected setSipProvider(Lgov/nist/javax/sip/SipProviderImpl;)V
    .locals 0
    .param p1, "sipProviderImpl"    # Lgov/nist/javax/sip/SipProviderImpl;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    #@2
    .line 113
    return-void
.end method
