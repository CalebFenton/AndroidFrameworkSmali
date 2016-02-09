.class Lcom/android/server/sip/SipHelper;
.super Ljava/lang/Object;
.source "SipHelper.java"


# static fields
.field private static final DBG:Z

.field private static final DBG_PING:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddressFactory:Ljavax/sip/address/AddressFactory;

.field private mHeaderFactory:Ljavax/sip/header/HeaderFactory;

.field private mMessageFactory:Ljavax/sip/message/MessageFactory;

.field private mSipProvider:Ljavax/sip/SipProvider;

.field private mSipStack:Ljavax/sip/SipStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 73
    const-class v0, Lcom/android/server/sip/SipHelper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    #@8
    .line 72
    return-void
.end method

.method public constructor <init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V
    .locals 2
    .param p1, "sipStack"    # Ljavax/sip/SipStack;
    .param p2, "sipProvider"    # Ljavax/sip/SipProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    #@5
    .line 86
    iput-object p2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@7
    .line 88
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    #@a
    move-result-object v0

    #@b
    .line 89
    .local v0, "sipFactory":Ljavax/sip/SipFactory;
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    #@11
    .line 90
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@17
    .line 91
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createMessageFactory()Ljavax/sip/message/MessageFactory;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    #@1d
    .line 84
    return-void
.end method

.method private createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-static {}, Ljava/lang/Math;->random()D

    #@3
    move-result-wide v2

    #@4
    const-wide v4, 0x40c3880000000000L    # 10000.0

    #@9
    mul-double/2addr v2, v4

    #@a
    double-to-long v0, v2

    #@b
    .line 115
    .local v0, "sequence":J
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@d
    invoke-interface {v2, v0, v1, p1}, Ljavax/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    #@10
    move-result-object v2

    #@11
    return-object v2
.end method

.method private createCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@2
    invoke-interface {v0}, Ljavax/sip/SipProvider;->getNewCallId()Ljavax/sip/header/CallIdHeader;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private createContactHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;
    .locals 5
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    if-nez p2, :cond_0

    #@2
    .line 161
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 162
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    #@d
    move-result-object v4

    #@e
    .line 161
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;

    #@11
    move-result-object v1

    #@12
    .line 166
    .local v1, "contactURI":Ljavax/sip/address/SipURI;
    :goto_0
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    #@14
    invoke-interface {v2, v1}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    #@17
    move-result-object v0

    #@18
    .line 167
    .local v0, "contactAddress":Ljavax/sip/address/Address;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v0, v2}, Ljavax/sip/address/Address;->setDisplayName(Ljava/lang/String;)V

    #@1f
    .line 169
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@21
    invoke-interface {v2, v0}, Ljavax/sip/header/HeaderFactory;->createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 163
    .end local v0    # "contactAddress":Ljavax/sip/address/Address;
    .end local v1    # "contactURI":Ljavax/sip/address/SipURI;
    :cond_0
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;

    #@31
    move-result-object v1

    #@32
    .restart local v1    # "contactURI":Ljavax/sip/address/SipURI;
    goto :goto_0
.end method

.method private createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@2
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@2
    const/16 v1, 0x46

    #@4
    invoke-interface {v0, v1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@2
    invoke-interface {v0, p1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 10
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

    #@0
    .prologue
    .line 271
    invoke-direct {p0, p2, p4}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    #@3
    move-result-object v5

    #@4
    .line 272
    .local v5, "fromHeader":Ljavax/sip/header/FromHeader;
    invoke-direct {p0, p3}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    #@7
    move-result-object v6

    #@8
    .line 273
    .local v6, "toHeader":Ljavax/sip/header/ToHeader;
    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    #@b
    move-result-object v1

    #@c
    .line 274
    .local v1, "requestURI":Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    #@f
    move-result-object v7

    #@10
    .line 275
    .local v7, "viaHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    #@13
    move-result-object v3

    #@14
    .line 276
    .local v3, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    #@17
    move-result-object v4

    #@18
    .line 277
    .local v4, "cSeqHeader":Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    #@1b
    move-result-object v8

    #@1c
    .line 279
    .local v8, "maxForwards":Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    #@1e
    move-object v2, p1

    #@1f
    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    #@22
    move-result-object v9

    #@23
    .line 283
    .local v9, "request":Ljavax/sip/message/Request;
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v9, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@2a
    .line 284
    return-object v9
.end method

.method private createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 15
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "userProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    move-object/from16 v0, p2

    #@2
    move-object/from16 v1, p3

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/server/sip/SipHelper;->createFromHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    #@7
    move-result-object v7

    #@8
    .line 236
    .local v7, "fromHeader":Ljavax/sip/header/FromHeader;
    move-object/from16 v0, p2

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    #@d
    move-result-object v8

    #@e
    .line 238
    .local v8, "toHeader":Ljavax/sip/header/ToHeader;
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual/range {p2 .. p2}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v4, "@"

    #@1e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v11

    #@2a
    .line 239
    .local v11, "replaceStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    #@2c
    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v14, ""

    #@33
    invoke-virtual {v4, v11, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 239
    invoke-interface {v2, v4}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;

    #@3a
    move-result-object v3

    #@3b
    .line 242
    .local v3, "requestURI":Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    #@3e
    move-result-object v9

    #@3f
    .line 243
    .local v9, "viaHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    #@42
    move-result-object v5

    #@43
    .line 244
    .local v5, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    #@46
    move-result-object v6

    #@47
    .line 245
    .local v6, "cSeqHeader":Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    #@4a
    move-result-object v10

    #@4b
    .line 246
    .local v10, "maxForwards":Ljavax/sip/header/MaxForwardsHeader;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    #@4d
    move-object/from16 v4, p1

    #@4f
    invoke-interface/range {v2 .. v10}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    #@52
    move-result-object v12

    #@53
    .line 249
    .local v12, "request":Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@55
    const-string/jumbo v4, "User-Agent"

    #@58
    .line 250
    const-string/jumbo v14, "SIPAUA/0.1.001"

    #@5b
    .line 249
    invoke-interface {v2, v4, v14}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    #@5e
    move-result-object v13

    #@5f
    .line 251
    .local v13, "userAgentHeader":Ljavax/sip/header/Header;
    invoke-interface {v12, v13}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@62
    .line 252
    return-object v12
.end method

.method private createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    #@2
    invoke-interface {v2, p1, p3}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    #@5
    move-result-object v1

    #@6
    .line 187
    .local v1, "uri":Ljavax/sip/address/SipURI;
    :try_start_0
    invoke-interface {v1, p4}, Ljavax/sip/address/SipURI;->setPort(I)V

    #@9
    .line 188
    invoke-interface {v1, p2}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 192
    return-object v1

    #@d
    .line 189
    :catch_0
    move-exception v0

    #@e
    .line 190
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v2
.end method

.method private createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;
    .param p3, "lp"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getPort()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private createToHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;
    .locals 1
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipHelper;->createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private createToHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .locals 2
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@2
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private createViaHeaders()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
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

    #@0
    .prologue
    .line 143
    new-instance v2, Ljava/util/ArrayList;

    #@2
    const/4 v3, 0x1

    #@3
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 144
    .local v2, "viaHeaders":Ljava/util/List;, "Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    #@9
    move-result-object v0

    #@a
    .line 145
    .local v0, "lp":Ljavax/sip/ListeningPoint;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@c
    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 146
    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getPort()I

    #@13
    move-result v5

    #@14
    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getTransport()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    const/4 v7, 0x0

    #@19
    .line 145
    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/sip/header/HeaderFactory;->createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;

    #@1c
    move-result-object v1

    #@1d
    .line 147
    .local v1, "viaHeader":Ljavax/sip/header/ViaHeader;
    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->setRPort()V

    #@20
    .line 148
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    .line 149
    return-object v2
.end method

.method private createWildcardContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 2

    #@0
    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@2
    invoke-interface {v1}, Ljavax/sip/header/HeaderFactory;->createContactHeader()Ljavax/sip/header/ContactHeader;

    #@5
    move-result-object v0

    #@6
    .line 174
    .local v0, "contactHeader":Ljavax/sip/header/ContactHeader;
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->setWildCard()V

    #@9
    .line 175
    return-object v0
.end method

.method public static getCallId(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # Ljava/util/EventObject;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 495
    if-nez p0, :cond_0

    #@3
    return-object v3

    #@4
    .line 496
    :cond_0
    instance-of v3, p0, Ljavax/sip/RequestEvent;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 497
    check-cast p0, Ljavax/sip/RequestEvent;

    #@a
    .end local p0    # "event":Ljava/util/EventObject;
    invoke-virtual {p0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@d
    move-result-object v3

    #@e
    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 498
    .restart local p0    # "event":Ljava/util/EventObject;
    :cond_1
    instance-of v3, p0, Ljavax/sip/ResponseEvent;

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 499
    check-cast p0, Ljavax/sip/ResponseEvent;

    #@19
    .end local p0    # "event":Ljava/util/EventObject;
    invoke-virtual {p0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    return-object v3

    #@22
    .line 500
    .restart local p0    # "event":Ljava/util/EventObject;
    :cond_2
    instance-of v3, p0, Ljavax/sip/DialogTerminatedEvent;

    #@24
    if-eqz v3, :cond_3

    #@26
    move-object v3, p0

    #@27
    .line 501
    check-cast v3, Ljavax/sip/DialogTerminatedEvent;

    #@29
    invoke-virtual {v3}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    #@2c
    move-result-object v0

    #@2d
    .line 502
    .local v0, "dialog":Ljavax/sip/Dialog;
    check-cast p0, Ljavax/sip/DialogTerminatedEvent;

    #@2f
    .end local p0    # "event":Ljava/util/EventObject;
    invoke-virtual {p0}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    #@32
    move-result-object v3

    #@33
    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    return-object v3

    #@38
    .line 503
    .end local v0    # "dialog":Ljavax/sip/Dialog;
    .restart local p0    # "event":Ljava/util/EventObject;
    :cond_3
    instance-of v3, p0, Ljavax/sip/TransactionTerminatedEvent;

    #@3a
    if-eqz v3, :cond_5

    #@3c
    move-object v1, p0

    #@3d
    .line 504
    check-cast v1, Ljavax/sip/TransactionTerminatedEvent;

    #@3f
    .line 505
    .local v1, "e":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_4

    #@45
    .line 506
    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    #@48
    move-result-object v3

    #@49
    .line 505
    :goto_0
    invoke-static {v3}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    return-object v3

    #@4e
    .line 507
    :cond_4
    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    #@51
    move-result-object v3

    #@52
    goto :goto_0

    #@53
    .line 509
    .end local v1    # "e":Ljavax/sip/TransactionTerminatedEvent;
    :cond_5
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    #@56
    move-result-object v2

    #@57
    .line 510
    .local v2, "source":Ljava/lang/Object;
    instance-of v3, v2, Ljavax/sip/Transaction;

    #@59
    if-eqz v3, :cond_6

    #@5b
    .line 511
    check-cast v2, Ljavax/sip/Transaction;

    #@5d
    .end local v2    # "source":Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    return-object v3

    #@62
    .line 512
    .restart local v2    # "source":Ljava/lang/Object;
    :cond_6
    instance-of v3, v2, Ljavax/sip/Dialog;

    #@64
    if-eqz v3, :cond_7

    #@66
    .line 513
    check-cast v2, Ljavax/sip/Dialog;

    #@68
    .end local v2    # "source":Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    return-object v3

    #@6d
    .line 516
    .restart local v2    # "source":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v3, ""

    #@70
    return-object v3
.end method

.method private static getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;
    .locals 1
    .param p0, "dialog"    # Ljavax/sip/Dialog;

    #@0
    .prologue
    .line 531
    invoke-interface {p0}, Ljavax/sip/Dialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 1
    .param p0, "transaction"    # Ljavax/sip/Transaction;

    #@0
    .prologue
    .line 520
    if-eqz p0, :cond_0

    #@2
    invoke-interface {p0}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    .line 521
    :cond_0
    const-string/jumbo v0, ""

    #@e
    goto :goto_0
.end method

.method private static getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljavax/sip/message/Message;

    #@0
    .prologue
    .line 526
    const-string/jumbo v1, "Call-ID"

    #@3
    invoke-interface {p0, v1}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljavax/sip/header/CallIdHeader;

    #@9
    .line 527
    .local v0, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method private getListeningPoint()Ljavax/sip/ListeningPoint;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 129
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@3
    const-string/jumbo v3, "UDP"

    #@6
    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@9
    move-result-object v0

    #@a
    .line 130
    .local v0, "lp":Ljavax/sip/ListeningPoint;
    if-nez v0, :cond_0

    #@c
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@e
    const-string/jumbo v3, "TCP"

    #@11
    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@14
    move-result-object v0

    #@15
    .line 131
    :cond_0
    if-nez v0, :cond_1

    #@17
    .line 132
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@19
    invoke-interface {v2}, Ljavax/sip/SipProvider;->getListeningPoints()[Ljavax/sip/ListeningPoint;

    #@1c
    move-result-object v1

    #@1d
    .line 133
    .local v1, "lps":[Ljavax/sip/ListeningPoint;
    if-eqz v1, :cond_1

    #@1f
    array-length v2, v1

    #@20
    if-lez v2, :cond_1

    #@22
    aget-object v0, v1, v4

    #@24
    .line 135
    .end local v1    # "lps":[Ljavax/sip/ListeningPoint;
    :cond_1
    if-nez v0, :cond_2

    #@26
    .line 136
    new-instance v2, Ljavax/sip/SipException;

    #@28
    const-string/jumbo v3, "no listening point is available"

    #@2b
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 138
    :cond_2
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 535
    sget-object v0, Lcom/android/server/sip/SipHelper;->TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 534
    return-void
.end method


# virtual methods
.method public getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;
    .locals 3
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 337
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    #@3
    move-result-object v1

    #@4
    .line 338
    .local v1, "transaction":Ljavax/sip/ServerTransaction;
    if-nez v1, :cond_0

    #@6
    .line 339
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@9
    move-result-object v0

    #@a
    .line 340
    .local v0, "request":Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@c
    invoke-interface {v2, v0}, Ljavax/sip/SipProvider;->getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 342
    .end local v0    # "request":Ljavax/sip/message/Request;
    :cond_0
    return-object v1
.end method

.method public handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;
    .locals 6
    .param p1, "responseEvent"    # Ljavax/sip/ResponseEvent;
    .param p2, "accountManager"    # Lgov/nist/javax/sip/clientauthutils/AccountManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    #@2
    check-cast v3, Lgov/nist/javax/sip/SipStackExt;

    #@4
    .line 259
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@6
    .line 258
    invoke-interface {v3, p2, v4}, Lgov/nist/javax/sip/SipStackExt;->getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;

    #@9
    move-result-object v0

    #@a
    .line 260
    .local v0, "authenticationHelper":Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    #@d
    move-result-object v2

    #@e
    .line 262
    .local v2, "tid":Ljavax/sip/ClientTransaction;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@11
    move-result-object v3

    #@12
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@14
    const/4 v5, 0x5

    #@15
    .line 261
    invoke-interface {v0, v3, v2, v4, v5}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;->handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;

    #@18
    move-result-object v1

    #@19
    .line 265
    .local v1, "ct":Ljavax/sip/ClientTransaction;
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V

    #@1c
    .line 266
    return-object v1
.end method

.method public sendBye(Ljavax/sip/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Ljavax/sip/Dialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    const-string/jumbo v1, "BYE"

    #@3
    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    #@6
    move-result-object v0

    #@7
    .line 437
    .local v0, "byeRequest":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@9
    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@c
    move-result-object v1

    #@d
    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V

    #@10
    .line 434
    return-void
.end method

.method public sendCancel(Ljavax/sip/ClientTransaction;)V
    .locals 2
    .param p1, "inviteTransaction"    # Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    invoke-interface {p1}, Ljavax/sip/ClientTransaction;->createCancel()Ljavax/sip/message/Request;

    #@3
    move-result-object v0

    #@4
    .line 444
    .local v0, "cancelRequest":Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@6
    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V

    #@d
    .line 441
    return-void
.end method

.method public sendInvite(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Lgov/nist/javax/sip/header/extensions/ReferredByHeader;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 6
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

    #@0
    .prologue
    .line 291
    :try_start_0
    const-string/jumbo v3, "INVITE"

    #@3
    invoke-direct {p0, v3, p1, p2, p4}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    #@6
    move-result-object v2

    #@7
    .line 292
    .local v2, "request":Ljavax/sip/message/Request;
    if-eqz p5, :cond_0

    #@9
    invoke-interface {v2, p5}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@c
    .line 293
    :cond_0
    if-eqz p6, :cond_1

    #@e
    .line 294
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@10
    .line 295
    const-string/jumbo v4, "Replaces"

    #@13
    .line 294
    invoke-interface {v3, v4, p6}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    #@16
    move-result-object v3

    #@17
    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@1a
    .line 298
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@1c
    .line 299
    const-string/jumbo v4, "application"

    #@1f
    const-string/jumbo v5, "sdp"

    #@22
    .line 298
    invoke-interface {v3, v4, v5}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    #@25
    move-result-object v3

    #@26
    .line 297
    invoke-interface {v2, p3, v3}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@29
    .line 301
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@2b
    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@2e
    move-result-object v0

    #@2f
    .line 303
    .local v0, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 304
    return-object v0

    #@33
    .line 305
    .end local v0    # "clientTransaction":Ljavax/sip/ClientTransaction;
    .end local v2    # "request":Ljavax/sip/message/Request;
    :catch_0
    move-exception v1

    #@34
    .line 306
    .local v1, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    #@36
    const-string/jumbo v4, "sendInvite()"

    #@39
    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    throw v3
.end method

.method public sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V
    .locals 5
    .param p1, "event"    # Ljavax/sip/ResponseEvent;
    .param p2, "dialog"    # Ljavax/sip/Dialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@3
    move-result-object v1

    #@4
    .line 427
    .local v1, "response":Ljavax/sip/message/Response;
    const-string/jumbo v4, "CSeq"

    #@7
    invoke-interface {v1, v4}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@a
    move-result-object v4

    #@b
    check-cast v4, Ljavax/sip/header/CSeqHeader;

    #@d
    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@10
    move-result-wide v2

    #@11
    .line 429
    .local v2, "cseq":J
    invoke-interface {p2, v2, v3}, Ljavax/sip/Dialog;->createAck(J)Ljavax/sip/message/Request;

    #@14
    move-result-object v0

    #@15
    .line 431
    .local v0, "ack":Ljavax/sip/message/Request;
    invoke-interface {p2, v0}, Ljavax/sip/Dialog;->sendAck(Ljavax/sip/message/Request;)V

    #@18
    .line 425
    return-void
.end method

.method public sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V
    .locals 5
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "inviteTransaction"    # Ljavax/sip/ServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@3
    move-result-object v1

    #@4
    .line 405
    .local v1, "request":Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    #@6
    .line 406
    const/16 v4, 0x1e6

    #@8
    .line 405
    invoke-interface {v3, v4, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    #@b
    move-result-object v2

    #@c
    .line 408
    .local v2, "response":Ljavax/sip/message/Response;
    if-nez p2, :cond_0

    #@e
    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    #@11
    move-result-object p2

    #@12
    .line 412
    :cond_0
    invoke-interface {p2}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@15
    move-result-object v3

    #@16
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@18
    if-eq v3, v4, :cond_1

    #@1a
    .line 414
    invoke-interface {p2, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 402
    :cond_1
    return-void

    #@1e
    .line 416
    .end local v1    # "request":Ljavax/sip/message/Request;
    .end local v2    # "response":Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    #@1f
    .line 417
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    #@21
    const-string/jumbo v4, "sendInviteBusyHere()"

    #@24
    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw v3
.end method

.method public sendInviteOk(Ljavax/sip/RequestEvent;Landroid/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Ljava/lang/String;I)Ljavax/sip/ServerTransaction;
    .locals 6
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

    #@0
    .prologue
    .line 377
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@3
    move-result-object v1

    #@4
    .line 378
    .local v1, "request":Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    #@6
    const/16 v4, 0xc8

    #@8
    invoke-interface {v3, v4, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    #@b
    move-result-object v2

    #@c
    .line 380
    .local v2, "response":Ljavax/sip/message/Response;
    invoke-direct {p0, p2, p5, p6}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    #@13
    .line 383
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@15
    .line 384
    const-string/jumbo v4, "application"

    #@18
    const-string/jumbo v5, "sdp"

    #@1b
    .line 383
    invoke-interface {v3, v4, v5}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    #@1e
    move-result-object v3

    #@1f
    .line 382
    invoke-interface {v2, p3, v3}, Ljavax/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@22
    .line 386
    if-nez p4, :cond_0

    #@24
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    #@27
    move-result-object p4

    #@28
    .line 390
    :cond_0
    invoke-interface {p4}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@2b
    move-result-object v3

    #@2c
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@2e
    if-eq v3, v4, :cond_1

    #@30
    .line 392
    invoke-interface {p4, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 395
    :cond_1
    return-object p4

    #@34
    .line 396
    .end local v1    # "request":Ljavax/sip/message/Request;
    .end local v2    # "response":Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    #@35
    .line 397
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    #@37
    const-string/jumbo v4, "sendInviteOk()"

    #@3a
    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw v3
.end method

.method public sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V
    .locals 4
    .param p1, "inviteRequest"    # Ljavax/sip/message/Request;
    .param p2, "inviteTransaction"    # Ljavax/sip/ServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    #@2
    .line 486
    const/16 v3, 0x1e7

    #@4
    .line 485
    invoke-interface {v2, v3, p1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    #@7
    move-result-object v1

    #@8
    .line 488
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-interface {p2, v1}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 483
    return-void

    #@c
    .line 489
    .end local v1    # "response":Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    #@d
    .line 490
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    #@f
    const-string/jumbo v3, "sendInviteRequestTerminated()"

    #@12
    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15
    throw v2
.end method

.method public sendOptions(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 5
    .param p1, "caller"    # Landroid/net/sip/SipProfile;
    .param p2, "callee"    # Landroid/net/sip/SipProfile;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    if-ne p1, p2, :cond_0

    #@2
    .line 199
    :try_start_0
    const-string/jumbo v3, "OPTIONS"

    #@5
    invoke-direct {p0, v3, p1, p3}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    #@8
    move-result-object v2

    #@9
    .line 203
    .local v2, "request":Ljavax/sip/message/Request;
    :goto_0
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@b
    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@e
    move-result-object v0

    #@f
    .line 204
    .local v0, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V

    #@12
    .line 205
    return-object v0

    #@13
    .line 200
    .end local v0    # "clientTransaction":Ljavax/sip/ClientTransaction;
    .end local v2    # "request":Ljavax/sip/message/Request;
    :cond_0
    const-string/jumbo v3, "OPTIONS"

    #@16
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v2

    #@1a
    .restart local v2    # "request":Ljavax/sip/message/Request;
    goto :goto_0

    #@1b
    .line 206
    .end local v2    # "request":Ljavax/sip/message/Request;
    :catch_0
    move-exception v1

    #@1c
    .line 207
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljavax/sip/SipException;

    #@1e
    const-string/jumbo v4, "sendOptions()"

    #@21
    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v3
.end method

.method public sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V
    .locals 5
    .param p1, "dialog"    # Ljavax/sip/Dialog;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 466
    :try_start_0
    const-string/jumbo v2, "NOTIFY"

    #@3
    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    #@6
    move-result-object v1

    #@7
    .line 467
    .local v1, "request":Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@9
    .line 468
    const-string/jumbo v3, "active;expires=60"

    #@c
    .line 467
    invoke-interface {v2, v3}, Ljavax/sip/header/HeaderFactory;->createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@13
    .line 471
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@15
    .line 472
    const-string/jumbo v3, "message"

    #@18
    const-string/jumbo v4, "sipfrag"

    #@1b
    .line 471
    invoke-interface {v2, v3, v4}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    #@1e
    move-result-object v2

    #@1f
    .line 470
    invoke-interface {v1, p2, v2}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@22
    .line 473
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@24
    .line 474
    const-string/jumbo v3, "refer"

    #@27
    .line 473
    invoke-interface {v2, v3}, Ljavax/sip/header/HeaderFactory;->createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@2e
    .line 476
    iget-object v2, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@30
    invoke-interface {v2, v1}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@33
    move-result-object v2

    #@34
    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 464
    return-void

    #@38
    .line 477
    .end local v1    # "request":Ljavax/sip/message/Request;
    :catch_0
    move-exception v0

    #@39
    .line 478
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    #@3b
    const-string/jumbo v3, "sendReferNotify()"

    #@3e
    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v2
.end method

.method public sendRegister(Landroid/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;
    .locals 5
    .param p1, "userProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "expiry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    :try_start_0
    const-string/jumbo v3, "REGISTER"

    #@3
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/sip/SipHelper;->createRequest(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    #@6
    move-result-object v2

    #@7
    .line 215
    .local v2, "request":Ljavax/sip/message/Request;
    if-nez p3, :cond_0

    #@9
    .line 218
    invoke-direct {p0}, Lcom/android/server/sip/SipHelper;->createWildcardContactHeader()Ljavax/sip/header/ContactHeader;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@10
    .line 222
    :goto_0
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@12
    invoke-interface {v3, p3}, Ljavax/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    #@19
    .line 225
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@1b
    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@1e
    move-result-object v0

    #@1f
    .line 226
    .local v0, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V

    #@22
    .line 227
    return-object v0

    #@23
    .line 220
    .end local v0    # "clientTransaction":Ljavax/sip/ClientTransaction;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipHelper;->createContactHeader(Landroid/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    goto :goto_0

    #@2b
    .line 228
    .end local v2    # "request":Ljavax/sip/message/Request;
    :catch_0
    move-exception v1

    #@2c
    .line 229
    .local v1, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    #@2e
    const-string/jumbo v4, "sendRegister()"

    #@31
    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@34
    throw v3
.end method

.method public sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 7
    .param p1, "dialog"    # Ljavax/sip/Dialog;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    :try_start_0
    const-string/jumbo v4, "INVITE"

    #@3
    invoke-interface {p1, v4}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    #@6
    move-result-object v2

    #@7
    .line 315
    .local v2, "request":Ljavax/sip/message/Request;
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    #@9
    .line 316
    const-string/jumbo v5, "application"

    #@c
    const-string/jumbo v6, "sdp"

    #@f
    .line 315
    invoke-interface {v4, v5, v6}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    #@12
    move-result-object v4

    #@13
    .line 314
    invoke-interface {v2, p2, v4}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    #@16
    .line 322
    const-string/jumbo v4, "Via"

    #@19
    invoke-interface {v2, v4}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Ljavax/sip/header/ViaHeader;

    #@1f
    .line 323
    .local v3, "viaHeader":Ljavax/sip/header/ViaHeader;
    if-eqz v3, :cond_0

    #@21
    invoke-interface {v3}, Ljavax/sip/header/ViaHeader;->setRPort()V

    #@24
    .line 326
    :cond_0
    iget-object v4, p0, Lcom/android/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    #@26
    invoke-interface {v4, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    #@29
    move-result-object v0

    #@2a
    .line 328
    .local v0, "clientTransaction":Ljavax/sip/ClientTransaction;
    invoke-interface {p1, v0}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 329
    return-object v0

    #@2e
    .line 330
    .end local v0    # "clientTransaction":Ljavax/sip/ClientTransaction;
    .end local v2    # "request":Ljavax/sip/message/Request;
    .end local v3    # "viaHeader":Ljavax/sip/header/ViaHeader;
    :catch_0
    move-exception v1

    #@2f
    .line 331
    .local v1, "e":Ljava/text/ParseException;
    new-instance v4, Ljavax/sip/SipException;

    #@31
    const-string/jumbo v5, "sendReinvite()"

    #@34
    invoke-direct {v4, v5, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    throw v4
.end method

.method public sendResponse(Ljavax/sip/RequestEvent;I)V
    .locals 5
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@3
    move-result-object v1

    #@4
    .line 451
    .local v1, "request":Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    #@6
    invoke-interface {v3, p2, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    #@9
    move-result-object v2

    #@a
    .line 457
    .local v2, "response":Ljavax/sip/message/Response;
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 448
    return-void

    #@12
    .line 458
    .end local v1    # "request":Ljavax/sip/message/Request;
    .end local v2    # "response":Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    #@13
    .line 459
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    #@15
    const-string/jumbo v4, "sendResponse()"

    #@18
    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw v3
.end method

.method public sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;
    .locals 7
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 352
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@3
    move-result-object v1

    #@4
    .line 353
    .local v1, "request":Ljavax/sip/message/Request;
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    #@7
    move-result-object v4

    #@8
    .line 355
    .local v4, "transaction":Ljavax/sip/ServerTransaction;
    iget-object v5, p0, Lcom/android/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    #@a
    const/16 v6, 0xb4

    #@c
    invoke-interface {v5, v6, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    #@f
    move-result-object v2

    #@10
    .line 358
    .local v2, "response":Ljavax/sip/message/Response;
    const-string/jumbo v5, "To"

    #@13
    invoke-interface {v2, v5}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljavax/sip/header/ToHeader;

    #@19
    .line 359
    .local v3, "toHeader":Ljavax/sip/header/ToHeader;
    invoke-interface {v3, p2}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    #@1c
    .line 360
    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    #@1f
    .line 362
    invoke-interface {v4, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 363
    return-object v4

    #@23
    .line 364
    .end local v1    # "request":Ljavax/sip/message/Request;
    .end local v2    # "response":Ljavax/sip/message/Response;
    .end local v3    # "toHeader":Ljavax/sip/header/ToHeader;
    .end local v4    # "transaction":Ljavax/sip/ServerTransaction;
    :catch_0
    move-exception v0

    #@24
    .line 365
    .local v0, "e":Ljava/text/ParseException;
    new-instance v5, Ljavax/sip/SipException;

    #@26
    const-string/jumbo v6, "sendRinging()"

    #@29
    invoke-direct {v5, v6, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v5
.end method
