.class public Lgov/nist/javax/sip/ListeningPointImpl;
.super Ljava/lang/Object;
.source "ListeningPointImpl.java"

# interfaces
.implements Ljavax/sip/ListeningPoint;
.implements Lgov/nist/javax/sip/ListeningPointExt;


# instance fields
.field protected greylist messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

.field greylist port:I

.field protected greylist sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

.field protected greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field protected greylist transport:Ljava/lang/String;


# direct methods
.method protected constructor greylist <init>(Ljavax/sip/SipStack;ILjava/lang/String;)V
    .registers 5
    .param p1, "sipStack"    # Ljavax/sip/SipStack;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/SipStackImpl;

    iput-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 134
    iput p2, p0, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    .line 135
    iput-object p3, p0, Lgov/nist/javax/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public static greylist makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 95
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 145
    new-instance v0, Lgov/nist/javax/sip/ListeningPointImpl;

    iget-object v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget v2, p0, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/ListeningPointImpl;-><init>(Ljavax/sip/SipStack;ILjava/lang/String;)V

    .line 147
    .local v0, "lip":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iput-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 148
    return-object v0
.end method

.method public greylist createContactHeader()Ljavax/sip/header/ContactHeader;
    .registers 6

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v1

    .line 229
    .local v1, "port":I
    new-instance v2, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    .line 230
    .local v2, "sipURI":Ljavax/sip/address/SipURI;
    invoke-interface {v2, v0}, Ljavax/sip/address/SipURI;->setHost(Ljava/lang/String;)V

    .line 231
    invoke-interface {v2, v1}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 232
    iget-object v3, p0, Lgov/nist/javax/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V

    .line 233
    new-instance v3, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 234
    .local v3, "contact":Lgov/nist/javax/sip/header/Contact;
    new-instance v4, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v4}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 235
    .local v4, "address":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 236
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Contact;->setAddress(Ljavax/sip/address/Address;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 238
    return-object v3

    .line 239
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "port":I
    .end local v2    # "sipURI":Ljavax/sip/address/SipURI;
    .end local v3    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v4    # "address":Lgov/nist/javax/sip/address/AddressImpl;
    :catch_29
    move-exception v0

    .line 240
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Unexpected exception"

    invoke-static {v2, v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    .line 241
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist createViaHeader()Ljavax/sip/header/ViaHeader;
    .registers 2

    .line 260
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public greylist getIPAddress()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist getKey()Ljava/lang/String;
    .registers 4

    .line 106
    invoke-virtual {p0}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    iget-object v2, p0, Lgov/nist/javax/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/ListeningPointImpl;->makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;
    .registers 2

    .line 222
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    return-object v0
.end method

.method public greylist getPort()I
    .registers 2

    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v0

    return v0
.end method

.method public greylist getProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .registers 2

    .line 185
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    return-object v0
.end method

.method public greylist getSentBy()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSentBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getViaHeader()Lgov/nist/javax/sip/header/Via;
    .registers 2

    .line 218
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public greylist isSentBySet()Z
    .registers 2

    .line 215
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->isSentBySet()Z

    move-result v0

    return v0
.end method

.method protected greylist removeSipProvider()V
    .registers 2

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 122
    return-void
.end method

.method public greylist sendHeartbeat(Ljava/lang/String;I)V
    .registers 6
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    .line 249
    .local v0, "targetHostPort":Lgov/nist/core/HostPort;
    new-instance v1, Lgov/nist/core/Host;

    invoke-direct {v1, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 250
    invoke-virtual {v0, p2}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 251
    iget-object v1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v1

    .line 252
    .local v1, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    new-instance v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v2}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 253
    .local v2, "siprequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->setNullRequest()V

    .line 254
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 256
    return-void
.end method

.method public greylist setSentBy(Ljava/lang/String;)V
    .registers 3
    .param p1, "sentBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/MessageProcessor;->setSentBy(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected greylist setSipProvider(Lgov/nist/javax/sip/SipProviderImpl;)V
    .registers 2
    .param p1, "sipProviderImpl"    # Lgov/nist/javax/sip/SipProviderImpl;

    .line 114
    iput-object p1, p0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 115
    return-void
.end method
