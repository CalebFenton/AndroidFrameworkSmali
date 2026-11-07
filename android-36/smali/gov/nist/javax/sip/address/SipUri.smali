.class public Lgov/nist/javax/sip/address/SipUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "SipUri.java"

# interfaces
.implements Ljavax/sip/address/SipURI;
.implements Lgov/nist/javax/sip/address/SipURIExt;


# static fields
.field private static final whitelist serialVersionUID:J = 0x6b8cc0d42713c224L


# instance fields
.field protected greylist authority:Lgov/nist/javax/sip/address/Authority;

.field protected greylist qheaders:Lgov/nist/core/NameValueList;

.field protected greylist telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

.field protected greylist uriParms:Lgov/nist/core/NameValueList;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 81
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    .line 82
    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 83
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 84
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public greylist clearPassword()V
    .registers 2

    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_f

    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v0

    .line 117
    .local v0, "userInfo":Lgov/nist/javax/sip/address/UserInfo;
    if-eqz v0, :cond_f

    .line 118
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/UserInfo;->clearPassword()V

    .line 120
    .end local v0    # "userInfo":Lgov/nist/javax/sip/address/UserInfo;
    :cond_f
    return-void
.end method

.method public greylist clearQheaders()V
    .registers 2

    .line 132
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 133
    return-void
.end method

.method public greylist clearUriParms()V
    .registers 2

    .line 109
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 110
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 713
    invoke-super {p0}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 714
    .local v0, "retval":Lgov/nist/javax/sip/address/SipUri;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v1, :cond_14

    .line 715
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/Authority;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 716
    :cond_14
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_22

    .line 717
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 718
    :cond_22
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_30

    .line 719
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 720
    :cond_30
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz v1, :cond_3e

    .line 721
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 722
    :cond_3e
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 242
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_14

    .line 244
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 245
    :cond_14
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 246
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 249
    :cond_26
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 250
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 253
    :cond_38
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "that"    # Ljava/lang/Object;

    .line 155
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 157
    :cond_4
    instance-of v1, p1, Ljavax/sip/address/SipURI;

    const/4 v2, 0x0

    if-eqz v1, :cond_202

    .line 158
    move-object v1, p0

    .line 159
    .local v1, "a":Ljavax/sip/address/SipURI;
    move-object v3, p1

    check-cast v3, Ljavax/sip/address/SipURI;

    .line 162
    .local v3, "b":Ljavax/sip/address/SipURI;
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_19

    return v2

    .line 166
    :cond_19
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    move v4, v0

    goto :goto_22

    :cond_21
    move v4, v2

    :goto_22
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2a

    move v5, v0

    goto :goto_2b

    :cond_2a
    move v5, v2

    :goto_2b
    xor-int/2addr v4, v5

    if-eqz v4, :cond_2f

    return v2

    .line 167
    :cond_2f
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_37

    move v4, v0

    goto :goto_38

    :cond_37
    move v4, v2

    :goto_38
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_40

    move v5, v0

    goto :goto_41

    :cond_40
    move v5, v2

    :goto_41
    xor-int/2addr v4, v5

    if-eqz v4, :cond_45

    return v2

    .line 169
    :cond_45
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_62

    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    return v2

    .line 170
    :cond_62
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7f

    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    return v2

    .line 171
    :cond_7f
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_87

    move v4, v0

    goto :goto_88

    :cond_87
    move v4, v2

    :goto_88
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_90

    move v5, v0

    goto :goto_91

    :cond_90
    move v5, v2

    :goto_91
    xor-int/2addr v4, v5

    if-eqz v4, :cond_95

    return v2

    .line 172
    :cond_95
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_aa

    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_aa

    return v2

    .line 173
    :cond_aa
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v4

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v5

    if-eq v4, v5, :cond_b5

    return v2

    .line 176
    :cond_b5
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getParameterNames()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :goto_b9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 177
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    .local v5, "pname":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "p1":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "p2":Ljava/lang/String;
    if-eqz v6, :cond_e0

    if-eqz v7, :cond_e0

    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e0

    return v2

    .line 184
    .end local v5    # "pname":Ljava/lang/String;
    .end local v6    # "p1":Ljava/lang/String;
    .end local v7    # "p2":Ljava/lang/String;
    :cond_e0
    goto :goto_b9

    .line 187
    .end local v4    # "i":Ljava/util/Iterator;
    :cond_e1
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e9

    move v4, v0

    goto :goto_ea

    :cond_e9
    move v4, v2

    :goto_ea
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f2

    move v5, v0

    goto :goto_f3

    :cond_f2
    move v5, v2

    :goto_f3
    xor-int/2addr v4, v5

    if-eqz v4, :cond_f7

    return v2

    .line 188
    :cond_f7
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_ff

    move v4, v0

    goto :goto_100

    :cond_ff
    move v4, v2

    :goto_100
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_108

    move v5, v0

    goto :goto_109

    :cond_108
    move v5, v2

    :goto_109
    xor-int/2addr v4, v5

    if-eqz v4, :cond_10d

    return v2

    .line 189
    :cond_10d
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_116

    move v4, v0

    goto :goto_117

    :cond_116
    move v4, v2

    :goto_117
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v6

    if-ne v6, v5, :cond_11f

    move v5, v0

    goto :goto_120

    :cond_11f
    move v5, v2

    :goto_120
    xor-int/2addr v4, v5

    if-eqz v4, :cond_124

    return v2

    .line 190
    :cond_124
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12c

    move v4, v0

    goto :goto_12d

    :cond_12c
    move v4, v2

    :goto_12d
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_135

    move v5, v0

    goto :goto_136

    :cond_135
    move v5, v2

    :goto_136
    xor-int/2addr v4, v5

    if-eqz v4, :cond_13a

    return v2

    .line 191
    :cond_13a
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_142

    move v4, v0

    goto :goto_143

    :cond_142
    move v4, v2

    :goto_143
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_14b

    move v5, v0

    goto :goto_14c

    :cond_14b
    move v5, v2

    :goto_14c
    xor-int/2addr v4, v5

    if-eqz v4, :cond_150

    return v2

    .line 194
    :cond_150
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_165

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_165

    return v2

    .line 195
    :cond_165
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_17a

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17a

    return v2

    .line 197
    :cond_17a
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_201

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_201

    .line 198
    const/4 v4, 0x0

    .line 200
    .local v4, "headerFactory":Ljavax/sip/header/HeaderFactory;
    :try_start_18f
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;

    move-result-object v5
    :try_end_197
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_18f .. :try_end_197} :catch_1fa

    .line 204
    .end local v4    # "headerFactory":Ljavax/sip/header/HeaderFactory;
    .local v5, "headerFactory":Ljavax/sip/header/HeaderFactory;
    nop

    .line 205
    invoke-interface {v1}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :goto_19c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_201

    .line 206
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 208
    .local v6, "hname":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "h1":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "h2":Ljava/lang/String;
    if-nez v7, :cond_1b5

    if-eqz v8, :cond_1b5

    return v2

    .line 212
    :cond_1b5
    if-nez v8, :cond_1ba

    if-eqz v7, :cond_1ba

    return v2

    .line 214
    :cond_1ba
    if-nez v7, :cond_1bf

    if-nez v8, :cond_1bf

    goto :goto_19c

    .line 216
    :cond_1bf
    :try_start_1bf
    invoke-static {v7}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v9}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v9

    .line 217
    .local v9, "header1":Ljavax/sip/header/Header;
    invoke-static {v8}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v10

    .line 219
    .local v10, "header2":Ljavax/sip/header/Header;
    invoke-interface {v9, v10}, Ljavax/sip/header/Header;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1d3
    .catch Ljava/text/ParseException; {:try_start_1bf .. :try_end_1d3} :catch_1d8

    if-nez v11, :cond_1d6

    return v2

    .line 223
    .end local v9    # "header1":Ljavax/sip/header/Header;
    .end local v10    # "header2":Ljavax/sip/header/Header;
    :cond_1d6
    nop

    .line 224
    .end local v6    # "hname":Ljava/lang/String;
    .end local v7    # "h1":Ljava/lang/String;
    .end local v8    # "h2":Ljava/lang/String;
    goto :goto_19c

    .line 220
    .restart local v6    # "hname":Ljava/lang/String;
    .restart local v7    # "h1":Ljava/lang/String;
    .restart local v8    # "h2":Ljava/lang/String;
    :catch_1d8
    move-exception v0

    .line 221
    .local v0, "e":Ljava/text/ParseException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot parse one of the header of the sip uris to compare "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 222
    return v2

    .line 201
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v5    # "headerFactory":Ljavax/sip/header/HeaderFactory;
    .end local v6    # "hname":Ljava/lang/String;
    .end local v7    # "h1":Ljava/lang/String;
    .end local v8    # "h2":Ljava/lang/String;
    .local v4, "headerFactory":Ljavax/sip/header/HeaderFactory;
    :catch_1fa
    move-exception v0

    .line 202
    .local v0, "e":Ljavax/sip/PeerUnavailableException;
    const-string v5, "Cannot get the header factory to parse the header of the sip uris to compare"

    invoke-static {v5, v0}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 203
    return v2

    .line 228
    .end local v0    # "e":Ljavax/sip/PeerUnavailableException;
    .end local v4    # "headerFactory":Ljavax/sip/header/HeaderFactory;
    :cond_201
    return v0

    .line 230
    .end local v1    # "a":Ljavax/sip/address/SipURI;
    .end local v3    # "b":Ljavax/sip/address/SipURI;
    :cond_202
    return v2
.end method

.method public greylist getAuthority()Lgov/nist/javax/sip/address/Authority;
    .registers 2

    .line 125
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    return-object v0
.end method

.method public greylist getGrParam()Ljava/lang/String;
    .registers 3

    .line 1051
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 736
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 737
    :cond_13
    const/4 v0, 0x0

    .line 735
    :goto_14
    return-object v0
.end method

.method public greylist getHeaderNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHost()Ljava/lang/String;
    .registers 3

    .line 424
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 425
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    if-nez v0, :cond_f

    return-object v1

    .line 426
    :cond_f
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getHostPort()Lgov/nist/core/HostPort;
    .registers 2

    .line 402
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_14

    .line 405
    :cond_d
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    return-object v0

    .line 403
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getLrParam()Ljava/lang/String;
    .registers 3

    .line 758
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    .line 759
    .local v0, "haslr":Z
    if-eqz v0, :cond_b

    const-string v1, "true"

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public greylist getMAddrParam()Ljava/lang/String;
    .registers 3

    .line 768
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "maddr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 769
    .local v0, "maddr":Lgov/nist/core/NameValue;
    if-nez v0, :cond_c

    .line 770
    const/4 v1, 0x0

    return-object v1

    .line 771
    :cond_c
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 772
    .local v1, "host":Ljava/lang/String;
    return-object v1
.end method

.method public greylist getMethod()Ljava/lang/String;
    .registers 2

    .line 326
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMethodParam()Ljava/lang/String;
    .registers 2

    .line 782
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 794
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 795
    const/4 v1, 0x0

    return-object v1

    .line 796
    :cond_a
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_16

    .line 797
    move-object v1, v0

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 799
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getParameterNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameters()Lgov/nist/core/NameValueList;
    .registers 2

    .line 334
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public greylist getParm(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "parmname"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    .local v0, "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public greylist getPort()I
    .registers 3

    .line 414
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    .line 415
    .local v0, "hp":Lgov/nist/core/HostPort;
    if-nez v0, :cond_8

    .line 416
    const/4 v1, -0x1

    return v1

    .line 417
    :cond_8
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    return v1
.end method

.method public greylist getQheaders()Lgov/nist/core/NameValueList;
    .registers 2

    .line 350
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTTLParam()I
    .registers 3

    .line 822
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 823
    .local v0, "ttl":Ljava/lang/Integer;
    if-eqz v0, :cond_11

    .line 824
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 826
    :cond_11
    const/4 v1, -0x1

    return v1
.end method

.method public greylist getTelephoneSubscriber()Lgov/nist/javax/sip/address/TelephoneNumber;
    .registers 2

    .line 388
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-nez v0, :cond_b

    .line 390
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 392
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    return-object v0
.end method

.method public greylist getTransportParam()Ljava/lang/String;
    .registers 3

    .line 835
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_f

    .line 836
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "transport"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 838
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getUser()Ljava/lang/String;
    .registers 2

    .line 849
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserAtHost()Ljava/lang/String;
    .registers 6

    .line 272
    const-string v0, ""

    .line 273
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 274
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_14
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 278
    .local v2, "s":Ljava/lang/StringBuffer;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 279
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .end local v2    # "s":Ljava/lang/StringBuffer;
    .local v3, "s":Ljava/lang/StringBuffer;
    goto :goto_38

    .line 281
    .end local v3    # "s":Ljava/lang/StringBuffer;
    .restart local v2    # "s":Ljava/lang/StringBuffer;
    :cond_2d
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 283
    .end local v2    # "s":Ljava/lang/StringBuffer;
    .restart local v3    # "s":Ljava/lang/StringBuffer;
    :goto_38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist getUserAtHostPort()Ljava/lang/String;
    .registers 7

    .line 291
    const-string v0, ""

    .line 292
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 293
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_14
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "host":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/Authority;->getPort()I

    move-result v2

    .line 298
    .local v2, "port":I
    const/4 v3, 0x0

    .line 299
    .local v3, "s":Ljava/lang/StringBuffer;
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 300
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .end local v3    # "s":Ljava/lang/StringBuffer;
    .local v4, "s":Ljava/lang/StringBuffer;
    goto :goto_3e

    .line 302
    .end local v4    # "s":Ljava/lang/StringBuffer;
    .restart local v3    # "s":Ljava/lang/StringBuffer;
    :cond_33
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 304
    .end local v3    # "s":Ljava/lang/StringBuffer;
    .restart local v4    # "s":Ljava/lang/StringBuffer;
    :goto_3e
    const/4 v3, -0x1

    if-eq v2, v3, :cond_54

    .line 305
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 307
    :cond_54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public greylist getUserParam()Ljava/lang/String;
    .registers 2

    .line 1012
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserPassword()Ljava/lang/String;
    .registers 2

    .line 367
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_6

    .line 368
    const/4 v0, 0x0

    return-object v0

    .line 369
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserType()Ljava/lang/String;
    .registers 3

    .line 358
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist hasGrParam()Z
    .registers 3

    .line 1033
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist hasLrParam()Z
    .registers 3

    .line 1023
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "lr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist hasParameter(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist hasTransport()Z
    .registers 2

    .line 689
    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isSecure()Z
    .registers 3

    .line 859
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isSipURI()Z
    .registers 2

    .line 867
    const/4 v0, 0x1

    return v0
.end method

.method public greylist isUserTelephoneSubscriber()Z
    .registers 3

    .line 456
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .local v0, "usrtype":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 458
    const/4 v1, 0x0

    return v1

    .line 459
    :cond_e
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public greylist removeHeader(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_9

    .line 491
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 492
    :cond_9
    return-void
.end method

.method public greylist removeHeaders()V
    .registers 2

    .line 497
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 498
    return-void
.end method

.method public greylist removeMAddr()V
    .registers 3

    .line 474
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 475
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "maddr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 476
    :cond_b
    return-void
.end method

.method public greylist removeMethod()V
    .registers 3

    .line 519
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 520
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 521
    :cond_b
    return-void
.end method

.method public greylist removeParameter(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 698
    return-void
.end method

.method public greylist removeParameters()V
    .registers 2

    .line 341
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 342
    return-void
.end method

.method public greylist removePort()V
    .registers 2

    .line 512
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removePort()V

    .line 513
    return-void
.end method

.method public greylist removeTTL()V
    .registers 3

    .line 466
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 467
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 468
    :cond_b
    return-void
.end method

.method public greylist removeTransport()V
    .registers 3

    .line 482
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 483
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "transport"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 484
    :cond_b
    return-void
.end method

.method public greylist removeUser()V
    .registers 2

    .line 542
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removeUserInfo()V

    .line 543
    return-void
.end method

.method public greylist removeUserType()V
    .registers 3

    .line 504
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 505
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 506
    :cond_b
    return-void
.end method

.method public greylist setAuthority(Lgov/nist/javax/sip/address/Authority;)V
    .registers 2
    .param p1, "authority"    # Lgov/nist/javax/sip/address/Authority;

    .line 562
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 563
    return-void
.end method

.method public greylist setDefaultParm(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 553
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 556
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_12
    return-void
.end method

.method public greylist setGrParam(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1042
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1043
    return-void
.end method

.method public greylist setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 878
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 879
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 881
    return-void
.end method

.method public greylist setHost(Lgov/nist/core/Host;)V
    .registers 3
    .param p1, "h"    # Lgov/nist/core/Host;

    .line 569
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 570
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 571
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHost(Lgov/nist/core/Host;)V

    .line 572
    return-void
.end method

.method public greylist setHost(Ljava/lang/String;)V
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 889
    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    .line 890
    .local v0, "h":Lgov/nist/core/Host;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->setHost(Lgov/nist/core/Host;)V

    .line 891
    return-void
.end method

.method public greylist setHostPort(Lgov/nist/core/HostPort;)V
    .registers 3
    .param p1, "hostPort"    # Lgov/nist/core/HostPort;

    .line 704
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 705
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 707
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHostPort(Lgov/nist/core/HostPort;)V

    .line 708
    return-void
.end method

.method public greylist setIsdnSubAddress(Ljava/lang/String;)V
    .registers 3
    .param p1, "isdnSubAddress"    # Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-nez v0, :cond_b

    .line 639
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 640
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setIsdnSubaddress(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public greylist setLrParam()V
    .registers 4

    .line 901
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "lr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method public greylist setMAddr(Ljava/lang/String;)V
    .registers 6
    .param p1, "mAddr"    # Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "maddr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 605
    .local v0, "nameValue":Lgov/nist/core/NameValue;
    new-instance v2, Lgov/nist/core/Host;

    invoke-direct {v2}, Lgov/nist/core/Host;-><init>()V

    .line 606
    .local v2, "host":Lgov/nist/core/Host;
    invoke-virtual {v2, p1}, Lgov/nist/core/Host;->setAddress(Ljava/lang/String;)V

    .line 607
    if-eqz v0, :cond_16

    .line 608
    invoke-virtual {v0, v2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_21

    .line 610
    :cond_16
    new-instance v3, Lgov/nist/core/NameValue;

    invoke-direct {v3, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 611
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 613
    :goto_21
    return-void
.end method

.method public greylist setMAddrParam(Ljava/lang/String;)V
    .registers 4
    .param p1, "maddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 913
    if-eqz p1, :cond_8

    .line 915
    const-string v0, "maddr"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    return-void

    .line 914
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad maddr"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMethod(Ljava/lang/String;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    return-void
.end method

.method public greylist setMethodParam(Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 925
    const-string v0, "method"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public greylist setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 947
    const-string v0, "ttl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 949
    :try_start_8
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_c

    .line 952
    goto :goto_27

    .line 950
    :catch_c
    move-exception v0

    .line 951
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 954
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_27
    :goto_27
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    return-void
.end method

.method public greylist setPort(I)V
    .registers 3
    .param p1, "p"    # I

    .line 655
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 656
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 657
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPort(I)V

    .line 658
    return-void
.end method

.method public greylist setQHeader(Lgov/nist/core/NameValue;)V
    .registers 3
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    .line 675
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 676
    return-void
.end method

.method public greylist setQheaders(Lgov/nist/core/NameValueList;)V
    .registers 2
    .param p1, "parms"    # Lgov/nist/core/NameValueList;

    .line 596
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    .line 597
    return-void
.end method

.method public greylist setScheme(Ljava/lang/String;)V
    .registers 5
    .param p1, "scheme"    # Ljava/lang/String;

    .line 92
    const-string v0, "sip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 93
    const-string v0, "sips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2a

    .line 94
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public greylist setSecure(Z)V
    .registers 3
    .param p1, "secure"    # Z

    .line 963
    if-eqz p1, :cond_7

    .line 964
    const-string v0, "sips"

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    goto :goto_b

    .line 966
    :cond_7
    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 967
    :goto_b
    return-void
.end method

.method public greylist setTTLParam(I)V
    .registers 5
    .param p1, "ttl"    # I

    .line 976
    if-lez p1, :cond_17

    .line 978
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_16

    .line 979
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "ttl"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 980
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 982
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_16
    return-void

    .line 977
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad ttl value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setTelephoneSubscriber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .registers 2
    .param p1, "tel"    # Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 648
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 649
    return-void
.end method

.method public greylist setTransportParam(Ljava/lang/String;)V
    .registers 5
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 995
    if-eqz p1, :cond_4f

    .line 997
    const-string v0, "UDP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    .line 998
    const-string v0, "TLS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    .line 999
    const-string v0, "TCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    .line 1000
    const-string v0, "SCTP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_3d

    .line 1004
    :cond_23
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1001
    :cond_3d
    :goto_3d
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "transport"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1002
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 1003
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    nop

    .line 1005
    return-void

    .line 996
    :cond_4f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setUriParameter(Lgov/nist/core/NameValue;)V
    .registers 3
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    .line 682
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 683
    return-void
.end method

.method public greylist setUriParm(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 588
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 590
    return-void
.end method

.method public greylist setUriParms(Lgov/nist/core/NameValueList;)V
    .registers 2
    .param p1, "parms"    # Lgov/nist/core/NameValueList;

    .line 578
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    .line 579
    return-void
.end method

.method public greylist setUser(Ljava/lang/String;)V
    .registers 3
    .param p1, "uname"    # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 533
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 536
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setUser(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public greylist setUserParam(Ljava/lang/String;)V
    .registers 4
    .param p1, "usertype"    # Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    return-void
.end method

.method public greylist setUserPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_b

    .line 377
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    .line 378
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPassword(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 262
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
