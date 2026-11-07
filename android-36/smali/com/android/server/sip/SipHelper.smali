.class Lcom/android/server/sip/SipHelper;
.super Ljava/lang/Object;
.source "SipHelper.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist DBG_PING:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAddressFactory:Ljavax/sip/address/AddressFactory;

.field private blacklist mHeaderFactory:Ljavax/sip/header/HeaderFactory;

.field private blacklist mMessageFactory:Ljavax/sip/message/MessageFactory;

.field private blacklist mSipProvider:Ljavax/sip/SipProvider;

.field private blacklist mSipStack:Ljavax/sip/SipStack;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const-class v0, Lcom/android/server/sip/SipHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V
    .registers 5
    .param p1, "sipStack"    # Ljavax/sip/SipStack;
    .param p2, "sipProvider"    # Ljavax/sip/SipProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    .line 86
    iput-object p2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    .line 88
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v0

    .line 89
    .local v0, "sipFactory":Ljavax/sip/SipFactory;
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    .line 90
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    .line 91
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createMessageFactory()Ljavax/sip/message/MessageFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    .line 92
    return-void
.end method

.method private blacklist createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 114
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 115
    .local v0, "sequence":J
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v2, v0, v1, p1}, Ljavax/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v0}, Ljavax/sip/SipProvider;->getNewCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;
    .registers 4
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createContactHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;
    .registers 7
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 160
    if-nez p2, :cond_13

    .line 161
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v2

    .line 161
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;

    move-result-object v0

    goto :goto_1f

    .line 163
    :cond_13
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;

    move-result-object v0

    :goto_1f
    nop

    .line 166
    .local v0, "contactURI":Ljavax/sip/address/SipURI;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v1, v0}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v1

    .line 167
    .local v1, "contactAddress":Ljavax/sip/address/Address;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/address/Address;->setDisplayName(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v2, v1}, Ljavax/sip/header/HeaderFactory;->createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .registers 5
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .registers 3
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0, p1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .registers 14
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "callee"    # Landroid/net/sip/SipProfile;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 271
    invoke-direct {p0, p2, p4}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v5

    .line 272
    .local v5, "fromHeader":Ljavax/sip/header/FromHeader;
    invoke-direct {p0, p3}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v6

    .line 273
    .local v6, "toHeader":Ljavax/sip/header/ToHeader;
    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 274
    .local v1, "requestURI":Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v7

    .line 275
    .local v7, "viaHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .line 276
    .local v3, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .line 277
    .local v4, "cSeqHeader":Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v8

    .line 279
    .local v8, "maxForwards":Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    move-object v2, p1

    .end local p1    # "requestType":Ljava/lang/String;
    .local v2, "requestType":Ljava/lang/String;
    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object p1

    .line 283
    .local p1, "request":Ljavax/sip/message/Request;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 284
    return-object p1
.end method

.method private blacklist createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .registers 16
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "userProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 235
    invoke-direct {p0, p2, p3}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v5

    .line 236
    .local v5, "fromHeader":Ljavax/sip/header/FromHeader;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v6

    .line 238
    .local v6, "toHeader":Ljavax/sip/header/ToHeader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "replaceStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    .line 240
    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-interface {v0, v1}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 242
    .local v1, "requestURI":Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v7

    .line 243
    .local v7, "viaHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .line 244
    .local v3, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .line 245
    .local v4, "cSeqHeader":Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v8

    .line 246
    .local v8, "maxForwards":Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    move-object v2, p1

    .end local p1    # "requestType":Ljava/lang/String;
    .local v2, "requestType":Ljava/lang/String;
    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object p1

    .line 249
    .local p1, "request":Ljavax/sip/message/Request;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v10, "User-Agent"

    const-string v11, "SIPAUA/0.1.001"

    invoke-interface {v0, v10, v11}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    .line 251
    .local v0, "userAgentHeader":Ljavax/sip/header/Header;
    invoke-interface {p1, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 252
    return-object p1
.end method

.method private blacklist createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;
    .registers 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v0, p1, p3}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v0

    .line 187
    .local v0, "uri":Ljavax/sip/address/SipURI;
    :try_start_6
    invoke-interface {v0, p4}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 188
    invoke-interface {v0, p2}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V
    :try_end_c
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_6 .. :try_end_c} :catch_e

    .line 191
    nop

    .line 192
    return-object v0

    .line 189
    :catch_e
    move-exception v1

    .line 190
    .local v1, "e":Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;
    .registers 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;
    .param p3, "lp"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 180
    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;
    .registers 3
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .registers 5
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createViaHeaders()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/sip/header/ViaHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v0, "viaHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v1

    .line 145
    .local v1, "lp":Ljavax/sip/ListeningPoint;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-interface {v1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v4

    invoke-interface {v1}, Ljavax/sip/ListeningPoint;->getTransport()Ljava/lang/String;

    move-result-object v5

    .line 145
    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/sip/header/HeaderFactory;->createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;

    move-result-object v2

    .line 147
    .local v2, "viaHeader":Ljavax/sip/header/ViaHeader;
    invoke-interface {v2}, Ljavax/sip/header/ViaHeader;->setRPort()V

    .line 148
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object v0
.end method

.method private blacklist createWildcardContactHeader()Ljavax/sip/header/ContactHeader;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0}, Ljavax/sip/header/HeaderFactory;->createContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v0

    .line 174
    .local v0, "contactHeader":Ljavax/sip/header/ContactHeader;
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->setWildCard()V

    .line 175
    return-object v0
.end method

.method public static blacklist getCallId(Ljava/util/EventObject;)Ljava/lang/String;
    .registers 3
    .param p0, "event"    # Ljava/util/EventObject;

    .line 495
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 496
    :cond_4
    instance-of v0, p0, Ljavax/sip/RequestEvent;

    if-eqz v0, :cond_14

    .line 497
    move-object v0, p0

    check-cast v0, Ljavax/sip/RequestEvent;

    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 498
    :cond_14
    instance-of v0, p0, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_24

    .line 499
    move-object v0, p0

    check-cast v0, Ljavax/sip/ResponseEvent;

    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 500
    :cond_24
    instance-of v0, p0, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v0, :cond_3b

    .line 501
    move-object v0, p0

    check-cast v0, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {v0}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    .line 502
    .local v0, "dialog":Ljavax/sip/Dialog;
    move-object v1, p0

    check-cast v1, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {v1}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 503
    .end local v0    # "dialog":Ljavax/sip/Dialog;
    :cond_3b
    instance-of v0, p0, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v0, :cond_56

    .line 504
    move-object v0, p0

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    .line 505
    .local v0, "e":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v0}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 506
    invoke-virtual {v0}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v1

    goto :goto_51

    .line 507
    :cond_4d
    invoke-virtual {v0}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 505
    :goto_51
    invoke-static {v1}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 509
    .end local v0    # "e":Ljavax/sip/TransactionTerminatedEvent;
    :cond_56
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, "source":Ljava/lang/Object;
    instance-of v1, v0, Ljavax/sip/Transaction;

    if-eqz v1, :cond_66

    .line 511
    move-object v1, v0

    check-cast v1, Ljavax/sip/Transaction;

    invoke-static {v1}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 512
    :cond_66
    instance-of v1, v0, Ljavax/sip/Dialog;

    if-eqz v1, :cond_72

    .line 513
    move-object v1, v0

    check-cast v1, Ljavax/sip/Dialog;

    invoke-static {v1}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 516
    .end local v0    # "source":Ljava/lang/Object;
    :cond_72
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;
    .registers 2
    .param p0, "dialog"    # Ljavax/sip/Dialog;

    .line 531
    invoke-interface {p0}, Ljavax/sip/Dialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;
    .registers 2
    .param p0, "transaction"    # Ljavax/sip/Transaction;

    .line 520
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 521
    :cond_b
    const-string v0, ""

    .line 520
    :goto_d
    return-object v0
.end method

.method private static blacklist getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;
    .registers 3
    .param p0, "message"    # Ljavax/sip/message/Message;

    .line 525
    nop

    .line 526
    const-string v0, "Call-ID"

    invoke-interface {p0, v0}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CallIdHeader;

    .line 527
    .local v0, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getListeningPoint()Ljavax/sip/ListeningPoint;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v1, "UDP"

    invoke-interface {v0, v1}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 130
    .local v0, "lp":Ljavax/sip/ListeningPoint;
    if-nez v0, :cond_12

    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v2, "TCP"

    invoke-interface {v1, v2}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 131
    :cond_12
    if-nez v0, :cond_22

    .line 132
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1}, Ljavax/sip/SipProvider;->getListeningPoints()[Ljavax/sip/ListeningPoint;

    move-result-object v1

    .line 133
    .local v1, "lps":[Ljavax/sip/ListeningPoint;
    if-eqz v1, :cond_22

    array-length v2, v1

    if-lez v2, :cond_22

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 135
    .end local v1    # "lps":[Ljavax/sip/ListeningPoint;
    :cond_22
    if-eqz v0, :cond_25

    .line 138
    return-object v0

    .line 136
    :cond_25
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "no listening point is available"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 535
    sget-object v0, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method


# virtual methods
.method public blacklist getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;
    .registers 5
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v0

    .line 338
    .local v0, "transaction":Ljavax/sip/ServerTransaction;
    if-nez v0, :cond_11

    .line 339
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 340
    .local v1, "request":Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v1}, Ljavax/sip/SipProvider;->getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;

    move-result-object v2

    return-object v2

    .line 342
    .end local v1    # "request":Ljavax/sip/message/Request;
    :cond_11
    return-object v0
.end method

.method public blacklist handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;
    .registers 8
    .param p1, "responseEvent"    # Ljavax/sip/ResponseEvent;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    check-cast v0, Lgov/nist/javax/sip/SipStackExt;

    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    .line 258
    invoke-interface {v0, p2, v1}, Lgov/nist/javax/sip/SipStackExt;->getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;

    move-result-object v0

    .line 260
    .local v0, "authenticationHelper":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 261
    .local v1, "tid":Ljavax/sip/ClientTransaction;
    nop

    .line 262
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    .line 261
    const/4 v4, 0x5

    invoke-interface {v0, v2, v1, v3, v4}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;->handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;

    move-result-object v2

    .line 265
    .local v2, "ct":Ljavax/sip/ClientTransaction;
    invoke-interface {v2}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 266
    return-object v2
.end method

.method public blacklist sendBye(Ljavax/sip/Dialog;)V
    .registers 4
    .param p1, "dialog"    # Ljavax/sip/Dialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 435
    const-string v0, "BYE"

    invoke-interface {p1, v0}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .line 437
    .local v0, "byeRequest":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V

    .line 438
    return-void
.end method

.method public blacklist sendCancel(Ljavax/sip/ClientTransaction;)V
    .registers 4
    .param p1, "inviteTransaction"    # Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 442
    invoke-interface {p1}, Ljavax/sip/ClientTransaction;->createCancel()Ljavax/sip/message/Request;

    move-result-object v0

    .line 444
    .local v0, "cancelRequest":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 445
    return-void
.end method

.method public blacklist sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Lgov/nist/javax/sip/header/extensions/ReferredByHeader;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .registers 11
    .param p1, "caller"    # Landroid/net/sip/SipProfile;
    .param p2, "callee"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "referredBy"    # Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    .param p6, "replaces"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 291
    :try_start_0
    const-string v0, "INVITE"

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .line 292
    .local v0, "request":Ljavax/sip/message/Request;
    if-eqz p5, :cond_b

    invoke-interface {v0, p5}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 293
    :cond_b
    if-eqz p6, :cond_18

    .line 294
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v2, "Replaces"

    invoke-interface {v1, v2, p6}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 297
    :cond_18
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v2, "application"

    const-string v3, "sdp"

    .line 298
    invoke-interface {v1, v2, v3}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v1

    .line 297
    invoke-interface {v0, p3, v1}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 300
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    .line 301
    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 303
    .local v1, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V
    :try_end_2e
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 304
    return-object v1

    .line 305
    .end local v0    # "request":Ljavax/sip/message/Request;
    .end local v1    # "clientTransaction":Ljavax/sip/ClientTransaction;
    :catch_2f
    move-exception v0

    .line 306
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendInvite()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V
    .registers 7
    .param p1, "event"    # Ljavax/sip/ResponseEvent;
    .param p2, "dialog"    # Ljavax/sip/Dialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 426
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    .line 427
    .local v0, "response":Ljavax/sip/message/Response;
    const-string v1, "CSeq"

    invoke-interface {v0, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/CSeqHeader;

    .line 428
    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    .line 429
    .local v1, "cseq":J
    invoke-interface {p2, v1, v2}, Ljavax/sip/Dialog;->createAck(J)Ljavax/sip/message/Request;

    move-result-object v3

    .line 431
    .local v3, "ack":Ljavax/sip/message/Request;
    invoke-interface {p2, v3}, Ljavax/sip/Dialog;->sendAck(Ljavax/sip/message/Request;)V

    .line 432
    return-void
.end method

.method public blacklist sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V
    .registers 7
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "inviteTransaction"    # Ljavax/sip/ServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 404
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .line 405
    .local v0, "request":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v2, 0x1e6

    invoke-interface {v1, v2, v0}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v1

    .line 408
    .local v1, "response":Ljavax/sip/message/Response;
    if-nez p2, :cond_13

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v2

    move-object p2, v2

    .line 412
    :cond_13
    invoke-interface {p2}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v2, v3, :cond_1e

    .line 414
    invoke-interface {p2, v1}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_1e
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_1e} :catch_20

    .line 418
    .end local v0    # "request":Ljavax/sip/message/Request;
    .end local v1    # "response":Ljavax/sip/message/Response;
    :cond_1e
    nop

    .line 419
    return-void

    .line 416
    :catch_20
    move-exception v0

    .line 417
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendInviteBusyHere()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Ljava/lang/String;I)Ljavax/sip/ServerTransaction;
    .registers 12
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;
    .param p4, "inviteTransaction"    # Ljavax/sip/ServerTransaction;
    .param p5, "externalIp"    # Ljava/lang/String;
    .param p6, "externalPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 377
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .line 378
    .local v0, "request":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v2, 0xc8

    invoke-interface {v1, v2, v0}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v1

    .line 380
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-direct {p0, p2, p5, p6}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 382
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v3, "application"

    const-string v4, "sdp"

    .line 383
    invoke-interface {v2, v3, v4}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v2

    .line 382
    invoke-interface {v1, p3, v2}, Ljavax/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 386
    if-nez p4, :cond_27

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v2

    move-object p4, v2

    .line 390
    :cond_27
    invoke-interface {p4}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v2, v3, :cond_32

    .line 392
    invoke-interface {p4, v1}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_32} :catch_33

    .line 395
    :cond_32
    return-object p4

    .line 396
    .end local v0    # "request":Ljavax/sip/message/Request;
    .end local v1    # "response":Ljavax/sip/message/Response;
    :catch_33
    move-exception v0

    .line 397
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendInviteOk()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V
    .registers 6
    .param p1, "inviteRequest"    # Ljavax/sip/message/Request;
    .param p2, "inviteTransaction"    # Ljavax/sip/ServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v1, 0x1e7

    invoke-interface {v0, v1, p1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v0

    .line 488
    .local v0, "response":Ljavax/sip/message/Response;
    invoke-interface {p2, v0}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_b} :catch_d

    .line 491
    .end local v0    # "response":Ljavax/sip/message/Response;
    nop

    .line 492
    return-void

    .line 489
    :catch_d
    move-exception v0

    .line 490
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendInviteRequestTerminated()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendOptions(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .registers 7
    .param p1, "caller"    # Landroid/net/sip/SipProfile;
    .param p2, "callee"    # Landroid/net/sip/SipProfile;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 198
    const-string v0, "OPTIONS"

    if-ne p1, p2, :cond_9

    .line 199
    :try_start_4
    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    goto :goto_d

    .line 200
    :cond_9
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    :goto_d
    nop

    .line 202
    .local v0, "request":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    .line 203
    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 204
    .local v1, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 205
    return-object v1

    .line 206
    .end local v0    # "request":Ljavax/sip/message/Request;
    .end local v1    # "clientTransaction":Ljavax/sip/ClientTransaction;
    :catch_18
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendOptions()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V
    .registers 7
    .param p1, "dialog"    # Ljavax/sip/Dialog;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 466
    :try_start_0
    const-string v0, "NOTIFY"

    invoke-interface {p1, v0}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .line 467
    .local v0, "request":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v2, "active;expires=60"

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 470
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v2, "message"

    const-string v3, "sipfrag"

    .line 471
    invoke-interface {v1, v2, v3}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v1

    .line 470
    invoke-interface {v0, p2, v1}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 473
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v2, "refer"

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 476
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_32} :catch_34

    .line 479
    .end local v0    # "request":Ljavax/sip/message/Request;
    nop

    .line 480
    return-void

    .line 477
    :catch_34
    move-exception v0

    .line 478
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendReferNotify()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;
    .registers 7
    .param p1, "userProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "expiry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 214
    :try_start_0
    const-string v0, "REGISTER"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .line 215
    .local v0, "request":Ljavax/sip/message/Request;
    if-nez p3, :cond_10

    .line 218
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createWildcardContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    goto :goto_17

    .line 220
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 222
    :goto_17
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v1, p3}, Ljavax/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    .line 225
    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 226
    .local v1, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 227
    return-object v1

    .line 228
    .end local v0    # "request":Ljavax/sip/message/Request;
    .end local v1    # "clientTransaction":Ljavax/sip/ClientTransaction;
    :catch_2a
    move-exception v0

    .line 229
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendRegister()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .registers 7
    .param p1, "dialog"    # Ljavax/sip/Dialog;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 313
    :try_start_0
    const-string v0, "INVITE"

    invoke-interface {p1, v0}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .line 314
    .local v0, "request":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v2, "application"

    const-string v3, "sdp"

    .line 315
    invoke-interface {v1, v2, v3}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v1

    .line 314
    invoke-interface {v0, p2, v1}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 322
    const-string v1, "Via"

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ViaHeader;

    .line 323
    .local v1, "viaHeader":Ljavax/sip/header/ViaHeader;
    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->setRPort()V

    .line 325
    :cond_20
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    .line 326
    invoke-interface {v2, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    .line 328
    .local v2, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 329
    return-object v2

    .line 330
    .end local v0    # "request":Ljavax/sip/message/Request;
    .end local v1    # "viaHeader":Ljavax/sip/header/ViaHeader;
    .end local v2    # "clientTransaction":Ljavax/sip/ClientTransaction;
    :catch_2a
    move-exception v0

    .line 331
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendReinvite()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendResponse(Ljavax/sip/RequestEvent;I)V
    .registers 6
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 450
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .line 451
    .local v0, "request":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    invoke-interface {v1, p2, v0}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v1

    .line 457
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v2

    invoke-interface {v2, v1}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_11} :catch_13

    .line 460
    .end local v0    # "request":Ljavax/sip/message/Request;
    .end local v1    # "response":Ljavax/sip/message/Response;
    nop

    .line 461
    return-void

    .line 458
    :catch_13
    move-exception v0

    .line 459
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendResponse()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;
    .registers 7
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 352
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .line 353
    .local v0, "request":Ljavax/sip/message/Request;
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 355
    .local v1, "transaction":Ljavax/sip/ServerTransaction;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v3, 0xb4

    invoke-interface {v2, v3, v0}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 358
    .local v2, "response":Ljavax/sip/message/Response;
    const-string v3, "To"

    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/ToHeader;

    .line 359
    .local v3, "toHeader":Ljavax/sip/header/ToHeader;
    invoke-interface {v3, p2}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    .line 360
    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 362
    invoke-interface {v1, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_21
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_21} :catch_22

    .line 363
    return-object v1

    .line 364
    .end local v0    # "request":Ljavax/sip/message/Request;
    .end local v1    # "transaction":Ljavax/sip/ServerTransaction;
    .end local v2    # "response":Ljavax/sip/message/Response;
    .end local v3    # "toHeader":Ljavax/sip/header/ToHeader;
    :catch_22
    move-exception v0

    .line 365
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "sendRinging()"

    invoke-direct {v1, v2, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
