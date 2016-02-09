.class public Lgov/nist/javax/sip/stack/DefaultRouter;
.super Ljava/lang/Object;
.source "DefaultRouter.java"

# interfaces
.implements Ljavax/sip/address/Router;


# instance fields
.field private defaultRoute:Ljavax/sip/address/Hop;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljavax/sip/SipStack;Ljava/lang/String;)V
    .locals 3
    .param p1, "sipStack"    # Ljavax/sip/SipStack;
    .param p2, "defaultRoute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    move-object v1, p1

    #@4
    .line 113
    check-cast v1, Lgov/nist/javax/sip/SipStackImpl;

    #@6
    iput-object v1, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@8
    .line 114
    if-eqz p2, :cond_0

    #@a
    .line 116
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    #@f
    move-result-object v1

    #@10
    .line 117
    new-instance v2, Lgov/nist/javax/sip/stack/HopImpl;

    #@12
    invoke-direct {v2, p2}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;)V

    #@15
    .line 116
    invoke-interface {v1, v2}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 112
    :cond_0
    return-void

    #@1c
    .line 118
    :catch_0
    move-exception v0

    #@1d
    .line 120
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    check-cast p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1f
    .end local p1    # "sipStack":Ljavax/sip/SipStack;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@22
    move-result-object v1

    #@23
    .line 123
    const-string/jumbo v2, "Invalid default route specification - need host:port/transport"

    #@26
    .line 120
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@29
    .line 124
    throw v0
.end method

.method private final createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;
    .locals 7
    .param p1, "sipUri"    # Ljavax/sip/address/SipURI;
    .param p2, "request"    # Ljavax/sip/message/Request;

    #@0
    .prologue
    .line 291
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->isSecure()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_1

    #@6
    const-string/jumbo v3, "tls"

    #@9
    .line 293
    .local v3, "transport":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    #@b
    .line 295
    const-string/jumbo v5, "Via"

    #@e
    invoke-interface {p2, v5}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Ljavax/sip/header/ViaHeader;

    #@14
    .line 296
    .local v4, "via":Ljavax/sip/header/ViaHeader;
    invoke-interface {v4}, Ljavax/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 302
    .end local v4    # "via":Ljavax/sip/header/ViaHeader;
    :cond_0
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getPort()I

    #@1b
    move-result v5

    #@1c
    const/4 v6, -0x1

    #@1d
    if-eq v5, v6, :cond_2

    #@1f
    .line 303
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getPort()I

    #@22
    move-result v2

    #@23
    .line 310
    .local v2, "port":I
    :goto_1
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    if-eqz v5, :cond_4

    #@29
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 312
    .local v1, "host":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2f
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    #@32
    move-result-object v0

    #@33
    .line 314
    .local v0, "addressResolver":Lgov/nist/core/net/AddressResolver;
    new-instance v5, Lgov/nist/javax/sip/stack/HopImpl;

    #@35
    invoke-direct {v5, v1, v2, v3}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@38
    .line 313
    invoke-interface {v0, v5}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    #@3b
    move-result-object v5

    #@3c
    return-object v5

    #@3d
    .line 291
    .end local v0    # "addressResolver":Lgov/nist/core/net/AddressResolver;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "transport":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .restart local v3    # "transport":Ljava/lang/String;
    goto :goto_0

    #@42
    .line 305
    :cond_2
    const-string/jumbo v5, "tls"

    #@45
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_3

    #@4b
    .line 306
    const/16 v2, 0x13c5

    #@4d
    .restart local v2    # "port":I
    goto :goto_1

    #@4e
    .line 308
    .end local v2    # "port":I
    :cond_3
    const/16 v2, 0x13c4

    #@50
    .restart local v2    # "port":I
    goto :goto_1

    #@51
    .line 311
    :cond_4
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .restart local v1    # "host":Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method public fixStrictRouting(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 8
    .param p1, "req"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 264
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    #@3
    move-result-object v4

    #@4
    .line 265
    .local v4, "routes":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lgov/nist/javax/sip/header/Route;

    #@a
    .line 266
    .local v1, "first":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    #@d
    move-result-object v5

    #@e
    invoke-interface {v5}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    #@14
    .line 267
    .local v2, "firstUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    #@17
    .line 270
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@19
    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    #@1c
    .line 271
    .local v0, "addr":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddess(Ljavax/sip/address/URI;)V

    #@23
    .line 272
    new-instance v3, Lgov/nist/javax/sip/header/Route;

    #@25
    invoke-direct {v3, v0}, Lgov/nist/javax/sip/header/Route;-><init>(Lgov/nist/javax/sip/address/AddressImpl;)V

    #@28
    .line 274
    .local v3, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@2b
    .line 275
    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@2e
    .line 276
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@30
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_0

    #@36
    .line 277
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@38
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3b
    move-result-object v5

    #@3c
    new-instance v6, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v7, "post: fixStrictRouting"

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@53
    .line 262
    :cond_0
    return-void
.end method

.method public getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;
    .locals 11
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    move-object v5, p1

    #@2
    .line 163
    check-cast v5, Lgov/nist/javax/sip/message/SIPRequest;

    #@4
    .line 165
    .local v5, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    #@7
    move-result-object v1

    #@8
    .line 166
    .local v1, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    if-nez v1, :cond_0

    #@a
    .line 167
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    #@c
    return-object v8

    #@d
    .line 169
    :cond_0
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    #@10
    move-result-object v2

    #@11
    .line 170
    .local v2, "requestURI":Ljavax/sip/address/URI;
    if-nez v2, :cond_1

    #@13
    .line 171
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v9, "Bad message: Null requestURI"

    #@18
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v8

    #@1c
    .line 173
    :cond_1
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    #@1f
    move-result-object v4

    #@20
    .line 192
    .local v4, "routes":Lgov/nist/javax/sip/header/RouteList;
    if-eqz v4, :cond_5

    #@22
    .line 196
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Lgov/nist/javax/sip/header/Route;

    #@28
    .line 197
    .local v3, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    #@2b
    move-result-object v8

    #@2c
    invoke-interface {v8}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@2f
    move-result-object v7

    #@30
    .line 198
    .local v7, "uri":Ljavax/sip/address/URI;
    invoke-interface {v7}, Ljavax/sip/address/URI;->isSipURI()Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_4

    #@36
    move-object v6, v7

    #@37
    .line 199
    check-cast v6, Ljavax/sip/address/SipURI;

    #@39
    .line 200
    .local v6, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    #@3c
    move-result v8

    #@3d
    if-nez v8, :cond_2

    #@3f
    .line 202
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/DefaultRouter;->fixStrictRouting(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@42
    .line 203
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@44
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_2

    #@4a
    .line 204
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@4c
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4f
    move-result-object v8

    #@50
    .line 205
    const-string/jumbo v9, "Route post processing fixed strict routing"

    #@53
    .line 204
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@56
    .line 208
    :cond_2
    invoke-direct {p0, v6, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    #@59
    move-result-object v0

    #@5a
    .line 209
    .local v0, "hop":Ljavax/sip/address/Hop;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5c
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5f
    move-result v8

    #@60
    if-eqz v8, :cond_3

    #@62
    .line 210
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@64
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@67
    move-result-object v8

    #@68
    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v10, "NextHop based on Route:"

    #@70
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    .line 210
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@7f
    .line 212
    :cond_3
    return-object v0

    #@80
    .line 214
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .end local v6    # "sipUri":Ljavax/sip/address/SipURI;
    :cond_4
    new-instance v8, Ljavax/sip/SipException;

    #@82
    const-string/jumbo v9, "First Route not a SIP URI"

    #@85
    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@88
    throw v8

    #@89
    .line 217
    .end local v3    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v7    # "uri":Ljavax/sip/address/URI;
    :cond_5
    invoke-interface {v2}, Ljavax/sip/address/URI;->isSipURI()Z

    #@8c
    move-result v8

    #@8d
    if-eqz v8, :cond_7

    #@8f
    move-object v8, v2

    #@90
    .line 218
    check-cast v8, Ljavax/sip/address/SipURI;

    #@92
    invoke-interface {v8}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    if-eqz v8, :cond_7

    #@98
    .line 219
    check-cast v2, Ljavax/sip/address/SipURI;

    #@9a
    .end local v2    # "requestURI":Ljavax/sip/address/URI;
    invoke-direct {p0, v2, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    #@9d
    move-result-object v0

    #@9e
    .line 220
    .restart local v0    # "hop":Ljavax/sip/address/Hop;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a0
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@a3
    move-result v8

    #@a4
    if-eqz v8, :cond_6

    #@a6
    .line 221
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a8
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@ab
    move-result-object v8

    #@ac
    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v10, "Using request URI maddr to route the request = "

    #@b4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    .line 223
    invoke-interface {v0}, Ljavax/sip/address/Hop;->toString()Ljava/lang/String;

    #@bb
    move-result-object v10

    #@bc
    .line 222
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    .line 221
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@c7
    .line 228
    :cond_6
    return-object v0

    #@c8
    .line 230
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .restart local v2    # "requestURI":Ljavax/sip/address/URI;
    :cond_7
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    #@ca
    if-eqz v8, :cond_9

    #@cc
    .line 231
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@ce
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@d1
    move-result v8

    #@d2
    if-eqz v8, :cond_8

    #@d4
    .line 232
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@d6
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d9
    move-result-object v8

    #@da
    .line 233
    new-instance v9, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v10, "Using outbound proxy to route the request = "

    #@e2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v9

    #@e6
    .line 234
    iget-object v10, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    #@e8
    invoke-interface {v10}, Ljavax/sip/address/Hop;->toString()Ljava/lang/String;

    #@eb
    move-result-object v10

    #@ec
    .line 233
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v9

    #@f4
    .line 232
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@f7
    .line 235
    :cond_8
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    #@f9
    return-object v8

    #@fa
    .line 236
    :cond_9
    invoke-interface {v2}, Ljavax/sip/address/URI;->isSipURI()Z

    #@fd
    move-result v8

    #@fe
    if-eqz v8, :cond_c

    #@100
    .line 237
    check-cast v2, Ljavax/sip/address/SipURI;

    #@102
    .end local v2    # "requestURI":Ljavax/sip/address/URI;
    invoke-direct {p0, v2, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    #@105
    move-result-object v0

    #@106
    .line 238
    .restart local v0    # "hop":Ljavax/sip/address/Hop;
    if-eqz v0, :cond_b

    #@108
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@10a
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@10d
    move-result v8

    #@10e
    if-eqz v8, :cond_b

    #@110
    .line 239
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@112
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@115
    move-result-object v8

    #@116
    new-instance v9, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v10, "Used request-URI for nextHop = "

    #@11e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v9

    #@122
    .line 240
    invoke-interface {v0}, Ljavax/sip/address/Hop;->toString()Ljava/lang/String;

    #@125
    move-result-object v10

    #@126
    .line 239
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v9

    #@12a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v9

    #@12e
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@131
    .line 245
    :cond_a
    :goto_0
    return-object v0

    #@132
    .line 241
    :cond_b
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@134
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@137
    move-result v8

    #@138
    if-eqz v8, :cond_a

    #@13a
    .line 242
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@13c
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@13f
    move-result-object v8

    #@140
    .line 243
    const-string/jumbo v9, "returning null hop -- loop detected"

    #@143
    .line 242
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@146
    goto :goto_0

    #@147
    .line 249
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .restart local v2    # "requestURI":Ljavax/sip/address/URI;
    :cond_c
    const-string/jumbo v8, "Unexpected non-sip URI"

    #@14a
    .line 250
    iget-object v9, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@14c
    invoke-virtual {v9}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@14f
    move-result-object v9

    #@150
    .line 249
    invoke-static {v8, v9}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    #@153
    .line 251
    return-object v10
.end method

.method public getNextHops(Ljavax/sip/message/Request;)Ljava/util/ListIterator;
    .locals 3
    .param p1, "request"    # Ljavax/sip/message/Request;

    #@0
    .prologue
    .line 337
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 338
    .local v1, "llist":Ljava/util/LinkedList;
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@c
    .line 339
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 340
    .end local v1    # "llist":Ljava/util/LinkedList;
    :catch_0
    move-exception v0

    #@12
    .line 341
    .local v0, "ex":Ljavax/sip/SipException;
    const/4 v2, 0x0

    #@13
    return-object v2
.end method

.method public getOutboundProxy()Ljavax/sip/address/Hop;
    .locals 1

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    #@2
    return-object v0
.end method
