.class public Lgov/nist/javax/sip/stack/DefaultRouter;
.super Ljava/lang/Object;
.source "DefaultRouter.java"

# interfaces
.implements Ljavax/sip/address/Router;


# instance fields
.field private greylist defaultRoute:Ljavax/sip/address/Hop;

.field private greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor greylist <init>(Ljavax/sip/SipStack;Ljava/lang/String;)V
    .registers 6
    .param p1, "sipStack"    # Ljavax/sip/SipStack;
    .param p2, "defaultRoute"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/SipStackImpl;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 114
    if-eqz p2, :cond_2a

    .line 116
    :try_start_a
    iget-object v0, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v1, p2}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-interface {v0, v1}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 125
    goto :goto_2a

    .line 118
    :catch_1c
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 121
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    .line 122
    const-string v2, "Invalid default route specification - need host:port/transport"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 124
    throw v0

    .line 127
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_2a
    :goto_2a
    return-void
.end method

.method private final greylist createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;
    .registers 8
    .param p1, "sipUri"    # Ljavax/sip/address/SipURI;
    .param p2, "request"    # Ljavax/sip/message/Request;

    .line 291
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v0

    const-string v1, "tls"

    if-eqz v0, :cond_a

    move-object v0, v1

    goto :goto_e

    .line 292
    :cond_a
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v0

    :goto_e
    nop

    .line 293
    .local v0, "transport":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 295
    const-string v2, "Via"

    invoke-interface {p2, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/ViaHeader;

    .line 296
    .local v2, "via":Ljavax/sip/header/ViaHeader;
    invoke-interface {v2}, Ljavax/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    move-result-object v0

    .line 302
    .end local v2    # "via":Ljavax/sip/header/ViaHeader;
    :cond_1d
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_29

    .line 303
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v1

    .local v1, "port":I
    goto :goto_34

    .line 305
    .end local v1    # "port":I
    :cond_29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 306
    const/16 v1, 0x13c5

    .restart local v1    # "port":I
    goto :goto_34

    .line 308
    .end local v1    # "port":I
    :cond_32
    const/16 v1, 0x13c4

    .line 310
    .restart local v1    # "port":I
    :goto_34
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    .line 311
    :cond_3f
    invoke-interface {p1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v2

    :goto_43
    nop

    .line 312
    .local v2, "host":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    move-result-object v3

    .line 313
    .local v3, "addressResolver":Lgov/nist/core/net/AddressResolver;
    new-instance v4, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v4, v2, v1, v0}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    invoke-interface {v3, v4}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v4

    .line 313
    return-object v4
.end method


# virtual methods
.method public greylist fixStrictRouting(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 10
    .param p1, "req"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 264
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    .line 265
    .local v0, "routes":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Route;

    .line 266
    .local v1, "first":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    .line 267
    .local v2, "firstUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()Lgov/nist/javax/sip/header/SIPHeader;

    .line 270
    new-instance v3, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v3}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 271
    .local v3, "addr":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/address/AddressImpl;->setAddess(Ljavax/sip/address/URI;)V

    .line 272
    new-instance v4, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v4, v3}, Lgov/nist/javax/sip/header/Route;-><init>(Lgov/nist/javax/sip/address/AddressImpl;)V

    .line 274
    .local v4, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 275
    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 276
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 277
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "post: fixStrictRouting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 279
    :cond_52
    return-void
.end method

.method public greylist getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;
    .registers 13
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 163
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 165
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v1

    .line 166
    .local v1, "requestLine":Lgov/nist/javax/sip/header/RequestLine;
    if-nez v1, :cond_c

    .line 167
    iget-object v2, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    return-object v2

    .line 169
    :cond_c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    .line 170
    .local v2, "requestURI":Ljavax/sip/address/URI;
    if-eqz v2, :cond_145

    .line 173
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v3

    .line 192
    .local v3, "routes":Lgov/nist/javax/sip/header/RouteList;
    if-eqz v3, :cond_7c

    .line 196
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Route;

    .line 197
    .local v4, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v5

    .line 198
    .local v5, "uri":Ljavax/sip/address/URI;
    invoke-interface {v5}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 199
    move-object v6, v5

    check-cast v6, Ljavax/sip/address/SipURI;

    .line 200
    .local v6, "sipUri":Ljavax/sip/address/SipURI;
    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 202
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/DefaultRouter;->fixStrictRouting(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 203
    iget-object v7, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 204
    iget-object v7, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    .line 205
    const-string v8, "Route post processing fixed strict routing"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 208
    :cond_4b
    invoke-direct {p0, v6, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v7

    .line 209
    .local v7, "hop":Ljavax/sip/address/Hop;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_73

    .line 210
    iget-object v8, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NextHop based on Route:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 211
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 212
    :cond_73
    return-object v7

    .line 214
    .end local v6    # "sipUri":Ljavax/sip/address/SipURI;
    .end local v7    # "hop":Ljavax/sip/address/Hop;
    :cond_74
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "First Route not a SIP URI"

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 217
    .end local v4    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v5    # "uri":Ljavax/sip/address/URI;
    :cond_7c
    invoke-interface {v2}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v4

    if-eqz v4, :cond_bb

    move-object v4, v2

    check-cast v4, Ljavax/sip/address/SipURI;

    .line 218
    invoke-interface {v4}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_bb

    .line 219
    move-object v4, v2

    check-cast v4, Ljavax/sip/address/SipURI;

    invoke-direct {p0, v4, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v4

    .line 220
    .local v4, "hop":Ljavax/sip/address/Hop;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 221
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using request URI maddr to route the request = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 223
    invoke-interface {v4}, Ljavax/sip/address/Hop;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 228
    :cond_ba
    return-object v4

    .line 230
    .end local v4    # "hop":Ljavax/sip/address/Hop;
    :cond_bb
    iget-object v4, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    if-eqz v4, :cond_ec

    .line 231
    iget-object v4, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 232
    iget-object v4, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using outbound proxy to route the request = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    .line 234
    invoke-interface {v6}, Ljavax/sip/address/Hop;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 235
    :cond_e9
    iget-object v4, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    return-object v4

    .line 236
    :cond_ec
    invoke-interface {v2}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v4

    if-eqz v4, :cond_138

    .line 237
    move-object v4, v2

    check-cast v4, Ljavax/sip/address/SipURI;

    invoke-direct {p0, v4, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->createHop(Ljavax/sip/address/SipURI;Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v4

    .line 238
    .restart local v4    # "hop":Ljavax/sip/address/Hop;
    if-eqz v4, :cond_124

    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_124

    .line 239
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Used request-URI for nextHop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 240
    invoke-interface {v4}, Ljavax/sip/address/Hop;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_137

    .line 241
    :cond_124
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_137

    .line 242
    iget-object v5, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    .line 243
    const-string v6, "returning null hop -- loop detected"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 245
    :cond_137
    :goto_137
    return-object v4

    .line 249
    .end local v4    # "hop":Ljavax/sip/address/Hop;
    :cond_138
    iget-object v4, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 250
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    .line 249
    const-string v5, "Unexpected non-sip URI"

    invoke-static {v5, v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    .line 251
    const/4 v4, 0x0

    return-object v4

    .line 171
    .end local v3    # "routes":Lgov/nist/javax/sip/header/RouteList;
    :cond_145
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad message: Null requestURI"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public greylist getNextHops(Ljavax/sip/message/Request;)Ljava/util/ListIterator;
    .registers 4
    .param p1, "request"    # Ljavax/sip/message/Request;

    .line 337
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 338
    .local v0, "llist":Ljava/util/LinkedList;
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1
    :try_end_10
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 340
    .end local v0    # "llist":Ljava/util/LinkedList;
    :catch_11
    move-exception v0

    .line 341
    .local v0, "ex":Ljavax/sip/SipException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist getOutboundProxy()Ljavax/sip/address/Hop;
    .registers 2

    .line 327
    iget-object v0, p0, Lgov/nist/javax/sip/stack/DefaultRouter;->defaultRoute:Ljavax/sip/address/Hop;

    return-object v0
.end method
