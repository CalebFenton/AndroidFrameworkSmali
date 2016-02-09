.class public Lgov/nist/javax/sip/address/SipUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "SipUri.java"

# interfaces
.implements Ljavax/sip/address/SipURI;
.implements Lgov/nist/javax/sip/address/SipURIExt;


# static fields
.field private static final serialVersionUID:J = 0x6b8cc0d42713c224L


# instance fields
.field protected authority:Lgov/nist/javax/sip/address/Authority;

.field protected qheaders:Lgov/nist/core/NameValueList;

.field protected telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

.field protected uriParms:Lgov/nist/core/NameValueList;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    #@3
    .line 82
    const-string/jumbo v0, "sip"

    #@6
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    #@8
    .line 83
    new-instance v0, Lgov/nist/core/NameValueList;

    #@a
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@d
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@f
    .line 84
    new-instance v0, Lgov/nist/core/NameValueList;

    #@11
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@14
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@16
    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@18
    const-string/jumbo v1, "&"

    #@1b
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@1e
    .line 81
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 2

    #@0
    .prologue
    .line 115
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 116
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@6
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    #@9
    move-result-object v0

    #@a
    .line 117
    .local v0, "userInfo":Lgov/nist/javax/sip/address/UserInfo;
    if-eqz v0, :cond_0

    #@c
    .line 118
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/UserInfo;->clearPassword()V

    #@f
    .line 114
    .end local v0    # "userInfo":Lgov/nist/javax/sip/address/UserInfo;
    :cond_0
    return-void
.end method

.method public clearQheaders()V
    .locals 1

    #@0
    .prologue
    .line 132
    new-instance v0, Lgov/nist/core/NameValueList;

    #@2
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@5
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@7
    .line 131
    return-void
.end method

.method public clearUriParms()V
    .locals 1

    #@0
    .prologue
    .line 109
    new-instance v0, Lgov/nist/core/NameValueList;

    #@2
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@5
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@7
    .line 108
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 713
    invoke-super {p0}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    #@6
    .line 714
    .local v0, "retval":Lgov/nist/javax/sip/address/SipUri;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 715
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/address/Authority;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@14
    .line 716
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 717
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@1a
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lgov/nist/core/NameValueList;

    #@20
    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@22
    .line 718
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 719
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@28
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Lgov/nist/core/NameValueList;

    #@2e
    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@30
    .line 720
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 721
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@36
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Lgov/nist/javax/sip/address/TelephoneNumber;

    #@3c
    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@3e
    .line 722
    :cond_3
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, ":"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    .line 243
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 244
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@12
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@15
    .line 245
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@17
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 246
    const-string/jumbo v0, ";"

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@25
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@28
    .line 249
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@2a
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_2

    #@30
    .line 250
    const-string/jumbo v0, "?"

    #@33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 251
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@38
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@3b
    .line 253
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 19
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 155
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p0

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/16 v16, 0x1

    #@8
    return v16

    #@9
    .line 157
    :cond_0
    move-object/from16 v0, p1

    #@b
    instance-of v0, v0, Ljavax/sip/address/SipURI;

    #@d
    move/from16 v16, v0

    #@f
    if-eqz v16, :cond_2b

    #@11
    .line 158
    move-object/from16 v2, p0

    #@13
    .local v2, "a":Ljavax/sip/address/SipURI;
    move-object/from16 v3, p1

    #@15
    .line 159
    check-cast v3, Ljavax/sip/address/SipURI;

    #@17
    .line 162
    .local v3, "b":Ljavax/sip/address/SipURI;
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->isSecure()Z

    #@1a
    move-result v16

    #@1b
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->isSecure()Z

    #@1e
    move-result v17

    #@1f
    xor-int v16, v16, v17

    #@21
    if-eqz v16, :cond_1

    #@23
    const/16 v16, 0x0

    #@25
    return v16

    #@26
    .line 166
    :cond_1
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    #@29
    move-result-object v16

    #@2a
    if-nez v16, :cond_2

    #@2c
    const/16 v16, 0x1

    #@2e
    :goto_0
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    #@31
    move-result-object v17

    #@32
    if-nez v17, :cond_3

    #@34
    const/16 v17, 0x1

    #@36
    :goto_1
    xor-int v16, v16, v17

    #@38
    if-eqz v16, :cond_4

    #@3a
    const/16 v16, 0x0

    #@3c
    return v16

    #@3d
    :cond_2
    const/16 v16, 0x0

    #@3f
    goto :goto_0

    #@40
    :cond_3
    const/16 v17, 0x0

    #@42
    goto :goto_1

    #@43
    .line 167
    :cond_4
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    #@46
    move-result-object v16

    #@47
    if-nez v16, :cond_5

    #@49
    const/16 v16, 0x1

    #@4b
    :goto_2
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    #@4e
    move-result-object v17

    #@4f
    if-nez v17, :cond_6

    #@51
    const/16 v17, 0x1

    #@53
    :goto_3
    xor-int v16, v16, v17

    #@55
    if-eqz v16, :cond_7

    #@57
    const/16 v16, 0x0

    #@59
    return v16

    #@5a
    :cond_5
    const/16 v16, 0x0

    #@5c
    goto :goto_2

    #@5d
    :cond_6
    const/16 v17, 0x0

    #@5f
    goto :goto_3

    #@60
    .line 169
    :cond_7
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    #@63
    move-result-object v16

    #@64
    if-eqz v16, :cond_8

    #@66
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    #@69
    move-result-object v16

    #@6a
    invoke-static/range {v16 .. v16}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v16

    #@6e
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    #@71
    move-result-object v17

    #@72
    invoke-static/range {v17 .. v17}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v17

    #@76
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v16

    #@7a
    if-eqz v16, :cond_a

    #@7c
    .line 170
    :cond_8
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    #@7f
    move-result-object v16

    #@80
    if-eqz v16, :cond_9

    #@82
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    #@85
    move-result-object v16

    #@86
    invoke-static/range {v16 .. v16}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@89
    move-result-object v16

    #@8a
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    #@8d
    move-result-object v17

    #@8e
    invoke-static/range {v17 .. v17}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@91
    move-result-object v17

    #@92
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v16

    #@96
    if-eqz v16, :cond_b

    #@98
    .line 171
    :cond_9
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@9b
    move-result-object v16

    #@9c
    if-nez v16, :cond_c

    #@9e
    const/16 v16, 0x1

    #@a0
    :goto_4
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@a3
    move-result-object v17

    #@a4
    if-nez v17, :cond_d

    #@a6
    const/16 v17, 0x1

    #@a8
    :goto_5
    xor-int v16, v16, v17

    #@aa
    if-eqz v16, :cond_e

    #@ac
    const/16 v16, 0x0

    #@ae
    return v16

    #@af
    .line 169
    :cond_a
    const/16 v16, 0x0

    #@b1
    return v16

    #@b2
    .line 170
    :cond_b
    const/16 v16, 0x0

    #@b4
    return v16

    #@b5
    .line 171
    :cond_c
    const/16 v16, 0x0

    #@b7
    goto :goto_4

    #@b8
    :cond_d
    const/16 v17, 0x0

    #@ba
    goto :goto_5

    #@bb
    .line 172
    :cond_e
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@be
    move-result-object v16

    #@bf
    if-eqz v16, :cond_f

    #@c1
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@c4
    move-result-object v16

    #@c5
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@c8
    move-result-object v17

    #@c9
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@cc
    move-result v16

    #@cd
    if-eqz v16, :cond_10

    #@cf
    .line 173
    :cond_f
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getPort()I

    #@d2
    move-result v16

    #@d3
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getPort()I

    #@d6
    move-result v17

    #@d7
    move/from16 v0, v16

    #@d9
    move/from16 v1, v17

    #@db
    if-eq v0, v1, :cond_11

    #@dd
    const/16 v16, 0x0

    #@df
    return v16

    #@e0
    .line 172
    :cond_10
    const/16 v16, 0x0

    #@e2
    return v16

    #@e3
    .line 176
    :cond_11
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getParameterNames()Ljava/util/Iterator;

    #@e6
    move-result-object v12

    #@e7
    .local v12, "i":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@ea
    move-result v16

    #@eb
    if-eqz v16, :cond_13

    #@ed
    .line 177
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f0
    move-result-object v15

    #@f1
    check-cast v15, Ljava/lang/String;

    #@f3
    .line 179
    .local v15, "pname":Ljava/lang/String;
    invoke-interface {v2, v15}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@f6
    move-result-object v13

    #@f7
    .line 180
    .local v13, "p1":Ljava/lang/String;
    invoke-interface {v3, v15}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@fa
    move-result-object v14

    #@fb
    .line 183
    .local v14, "p2":Ljava/lang/String;
    if-eqz v13, :cond_12

    #@fd
    if-eqz v14, :cond_12

    #@ff
    invoke-static {v13}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@102
    move-result-object v16

    #@103
    invoke-static {v14}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@106
    move-result-object v17

    #@107
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10a
    move-result v16

    #@10b
    if-nez v16, :cond_12

    #@10d
    const/16 v16, 0x0

    #@10f
    return v16

    #@110
    .line 187
    .end local v13    # "p1":Ljava/lang/String;
    .end local v14    # "p2":Ljava/lang/String;
    .end local v15    # "pname":Ljava/lang/String;
    :cond_13
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    #@113
    move-result-object v16

    #@114
    if-nez v16, :cond_14

    #@116
    const/16 v16, 0x1

    #@118
    :goto_6
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    #@11b
    move-result-object v17

    #@11c
    if-nez v17, :cond_15

    #@11e
    const/16 v17, 0x1

    #@120
    :goto_7
    xor-int v16, v16, v17

    #@122
    if-eqz v16, :cond_16

    #@124
    const/16 v16, 0x0

    #@126
    return v16

    #@127
    :cond_14
    const/16 v16, 0x0

    #@129
    goto :goto_6

    #@12a
    :cond_15
    const/16 v17, 0x0

    #@12c
    goto :goto_7

    #@12d
    .line 188
    :cond_16
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    #@130
    move-result-object v16

    #@131
    if-nez v16, :cond_17

    #@133
    const/16 v16, 0x1

    #@135
    :goto_8
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    #@138
    move-result-object v17

    #@139
    if-nez v17, :cond_18

    #@13b
    const/16 v17, 0x1

    #@13d
    :goto_9
    xor-int v16, v16, v17

    #@13f
    if-eqz v16, :cond_19

    #@141
    const/16 v16, 0x0

    #@143
    return v16

    #@144
    :cond_17
    const/16 v16, 0x0

    #@146
    goto :goto_8

    #@147
    :cond_18
    const/16 v17, 0x0

    #@149
    goto :goto_9

    #@14a
    .line 189
    :cond_19
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getTTLParam()I

    #@14d
    move-result v16

    #@14e
    const/16 v17, -0x1

    #@150
    move/from16 v0, v16

    #@152
    move/from16 v1, v17

    #@154
    if-ne v0, v1, :cond_1a

    #@156
    const/16 v16, 0x1

    #@158
    :goto_a
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTTLParam()I

    #@15b
    move-result v17

    #@15c
    const/16 v18, -0x1

    #@15e
    move/from16 v0, v17

    #@160
    move/from16 v1, v18

    #@162
    if-ne v0, v1, :cond_1b

    #@164
    const/16 v17, 0x1

    #@166
    :goto_b
    xor-int v16, v16, v17

    #@168
    if-eqz v16, :cond_1c

    #@16a
    const/16 v16, 0x0

    #@16c
    return v16

    #@16d
    :cond_1a
    const/16 v16, 0x0

    #@16f
    goto :goto_a

    #@170
    :cond_1b
    const/16 v17, 0x0

    #@172
    goto :goto_b

    #@173
    .line 190
    :cond_1c
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    #@176
    move-result-object v16

    #@177
    if-nez v16, :cond_1d

    #@179
    const/16 v16, 0x1

    #@17b
    :goto_c
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    #@17e
    move-result-object v17

    #@17f
    if-nez v17, :cond_1e

    #@181
    const/16 v17, 0x1

    #@183
    :goto_d
    xor-int v16, v16, v17

    #@185
    if-eqz v16, :cond_1f

    #@187
    const/16 v16, 0x0

    #@189
    return v16

    #@18a
    :cond_1d
    const/16 v16, 0x0

    #@18c
    goto :goto_c

    #@18d
    :cond_1e
    const/16 v17, 0x0

    #@18f
    goto :goto_d

    #@190
    .line 191
    :cond_1f
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    #@193
    move-result-object v16

    #@194
    if-nez v16, :cond_20

    #@196
    const/16 v16, 0x1

    #@198
    :goto_e
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    #@19b
    move-result-object v17

    #@19c
    if-nez v17, :cond_21

    #@19e
    const/16 v17, 0x1

    #@1a0
    :goto_f
    xor-int v16, v16, v17

    #@1a2
    if-eqz v16, :cond_22

    #@1a4
    const/16 v16, 0x0

    #@1a6
    return v16

    #@1a7
    :cond_20
    const/16 v16, 0x0

    #@1a9
    goto :goto_e

    #@1aa
    :cond_21
    const/16 v17, 0x0

    #@1ac
    goto :goto_f

    #@1ad
    .line 194
    :cond_22
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    #@1b0
    move-result-object v16

    #@1b1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@1b4
    move-result v16

    #@1b5
    if-eqz v16, :cond_23

    #@1b7
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    #@1ba
    move-result-object v16

    #@1bb
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@1be
    move-result v16

    #@1bf
    if-eqz v16, :cond_24

    #@1c1
    .line 195
    :cond_23
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    #@1c4
    move-result-object v16

    #@1c5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@1c8
    move-result v16

    #@1c9
    if-nez v16, :cond_25

    #@1cb
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    #@1ce
    move-result-object v16

    #@1cf
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@1d2
    move-result v16

    #@1d3
    if-eqz v16, :cond_25

    #@1d5
    const/16 v16, 0x0

    #@1d7
    return v16

    #@1d8
    .line 194
    :cond_24
    const/16 v16, 0x0

    #@1da
    return v16

    #@1db
    .line 197
    :cond_25
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    #@1de
    move-result-object v16

    #@1df
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@1e2
    move-result v16

    #@1e3
    if-eqz v16, :cond_2a

    #@1e5
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    #@1e8
    move-result-object v16

    #@1e9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@1ec
    move-result v16

    #@1ed
    if-eqz v16, :cond_2a

    #@1ef
    .line 198
    const/4 v10, 0x0

    #@1f0
    .line 200
    .local v10, "headerFactory":Ljavax/sip/header/HeaderFactory;
    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    #@1f3
    move-result-object v16

    #@1f4
    invoke-virtual/range {v16 .. v16}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f7
    move-result-object v10

    #@1f8
    .line 205
    .local v10, "headerFactory":Ljavax/sip/header/HeaderFactory;
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    #@1fb
    move-result-object v12

    #@1fc
    :cond_26
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@1ff
    move-result v16

    #@200
    if-eqz v16, :cond_2a

    #@202
    .line 206
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@205
    move-result-object v11

    #@206
    check-cast v11, Ljava/lang/String;

    #@208
    .line 208
    .local v11, "hname":Ljava/lang/String;
    invoke-interface {v2, v11}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    #@20b
    move-result-object v6

    #@20c
    .line 209
    .local v6, "h1":Ljava/lang/String;
    invoke-interface {v3, v11}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    #@20f
    move-result-object v7

    #@210
    .line 211
    .local v7, "h2":Ljava/lang/String;
    if-nez v6, :cond_27

    #@212
    if-eqz v7, :cond_27

    #@214
    const/16 v16, 0x0

    #@216
    return v16

    #@217
    .line 201
    .end local v6    # "h1":Ljava/lang/String;
    .end local v7    # "h2":Ljava/lang/String;
    .end local v11    # "hname":Ljava/lang/String;
    .local v10, "headerFactory":Ljavax/sip/header/HeaderFactory;
    :catch_0
    move-exception v5

    #@218
    .line 202
    .local v5, "e":Ljavax/sip/PeerUnavailableException;
    const-string/jumbo v16, "Cannot get the header factory to parse the header of the sip uris to compare"

    #@21b
    move-object/from16 v0, v16

    #@21d
    invoke-static {v0, v5}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@220
    .line 203
    const/16 v16, 0x0

    #@222
    return v16

    #@223
    .line 212
    .end local v5    # "e":Ljavax/sip/PeerUnavailableException;
    .restart local v6    # "h1":Ljava/lang/String;
    .restart local v7    # "h2":Ljava/lang/String;
    .local v10, "headerFactory":Ljavax/sip/header/HeaderFactory;
    .restart local v11    # "hname":Ljava/lang/String;
    :cond_27
    if-nez v7, :cond_28

    #@225
    if-eqz v6, :cond_28

    #@227
    const/16 v16, 0x0

    #@229
    return v16

    #@22a
    .line 214
    :cond_28
    if-nez v6, :cond_29

    #@22c
    if-eqz v7, :cond_26

    #@22e
    .line 216
    :cond_29
    :try_start_1
    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@231
    move-result-object v16

    #@232
    move-object/from16 v0, v16

    #@234
    invoke-interface {v10, v11, v0}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    #@237
    move-result-object v8

    #@238
    .line 217
    .local v8, "header1":Ljavax/sip/header/Header;
    invoke-static {v7}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@23b
    move-result-object v16

    #@23c
    move-object/from16 v0, v16

    #@23e
    invoke-interface {v10, v11, v0}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    #@241
    move-result-object v9

    #@242
    .line 219
    .local v9, "header2":Ljavax/sip/header/Header;
    invoke-interface {v8, v9}, Ljavax/sip/header/Header;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@245
    move-result v16

    #@246
    if-nez v16, :cond_26

    #@248
    const/16 v16, 0x0

    #@24a
    return v16

    #@24b
    .line 220
    .end local v8    # "header1":Ljavax/sip/header/Header;
    .end local v9    # "header2":Ljavax/sip/header/Header;
    :catch_1
    move-exception v4

    #@24c
    .line 221
    .local v4, "e":Ljava/text/ParseException;
    new-instance v16, Ljava/lang/StringBuilder;

    #@24e
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@251
    const-string/jumbo v17, "Cannot parse one of the header of the sip uris to compare "

    #@254
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v16

    #@258
    move-object/from16 v0, v16

    #@25a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v16

    #@25e
    const-string/jumbo v17, " "

    #@261
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v16

    #@265
    move-object/from16 v0, v16

    #@267
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v16

    #@26b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26e
    move-result-object v16

    #@26f
    move-object/from16 v0, v16

    #@271
    invoke-static {v0, v4}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@274
    .line 222
    const/16 v16, 0x0

    #@276
    return v16

    #@277
    .line 228
    .end local v4    # "e":Ljava/text/ParseException;
    .end local v6    # "h1":Ljava/lang/String;
    .end local v7    # "h2":Ljava/lang/String;
    .end local v10    # "headerFactory":Ljavax/sip/header/HeaderFactory;
    .end local v11    # "hname":Ljava/lang/String;
    :cond_2a
    const/16 v16, 0x1

    #@279
    return v16

    #@27a
    .line 230
    .end local v2    # "a":Ljavax/sip/address/SipURI;
    .end local v3    # "b":Ljavax/sip/address/SipURI;
    .end local v12    # "i":Ljava/util/Iterator;
    :cond_2b
    const/16 v16, 0x0

    #@27c
    return v16
.end method

.method public getAuthority()Lgov/nist/javax/sip/address/Authority;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    return-object v0
.end method

.method public getGrParam()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1051
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "gr"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 735
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@3
    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 736
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@b
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 735
    :cond_0
    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 424
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 425
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_1

    #@e
    return-object v1

    #@f
    .line 426
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@11
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 402
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@7
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 403
    :cond_0
    return-object v1

    #@e
    .line 405
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@10
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHostPort()Lgov/nist/core/HostPort;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public getLrParam()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 758
    const-string/jumbo v1, "lr"

    #@3
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    .line 759
    .local v0, "haslr":Z
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v1, "true"

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method public getMAddrParam()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 768
    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@3
    const-string/jumbo v3, "maddr"

    #@6
    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@9
    move-result-object v1

    #@a
    .line 769
    .local v1, "maddr":Lgov/nist/core/NameValue;
    if-nez v1, :cond_0

    #@c
    .line 770
    return-object v4

    #@d
    .line 771
    :cond_0
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/String;

    #@13
    .line 772
    .local v0, "host":Ljava/lang/String;
    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 326
    const-string/jumbo v0, "method"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParm(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    return-object v0
.end method

.method public getMethodParam()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 782
    const-string/jumbo v0, "method"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 793
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@3
    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 794
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@9
    .line 795
    return-object v2

    #@a
    .line 796
    :cond_0
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 797
    check-cast v0, Lgov/nist/core/GenericObject;

    #@10
    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 799
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 813
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .locals 1

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    return-object v0
.end method

.method public getParm(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "parmname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 317
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 318
    .local v0, "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getPort()I
    .locals 2

    #@0
    .prologue
    .line 414
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    #@3
    move-result-object v0

    #@4
    .line 415
    .local v0, "hp":Lgov/nist/core/HostPort;
    if-nez v0, :cond_0

    #@6
    .line 416
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 417
    :cond_0
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public getQheaders()Lgov/nist/core/NameValueList;
    .locals 1

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@2
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTTLParam()I
    .locals 3

    #@0
    .prologue
    .line 822
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v2, "ttl"

    #@5
    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Integer;

    #@b
    .line 823
    .local v0, "ttl":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@d
    .line 824
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 826
    :cond_0
    const/4 v1, -0x1

    #@13
    return v1
.end method

.method public getTelephoneSubscriber()Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 1

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 390
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@b
    .line 392
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@d
    return-object v0
.end method

.method public getTransportParam()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 835
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 836
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@7
    const-string/jumbo v1, "transport"

    #@a
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    return-object v0

    #@11
    .line 838
    :cond_0
    return-object v1
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 849
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getUser()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUserAtHost()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 272
    const-string/jumbo v2, ""

    #@3
    .line 273
    .local v2, "user":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@5
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    #@8
    move-result-object v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 274
    iget-object v3, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@d
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 276
    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@17
    invoke-virtual {v3}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 277
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    #@20
    .line 278
    .local v1, "s":Ljava/lang/StringBuffer;
    const-string/jumbo v3, ""

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 279
    new-instance v1, Ljava/lang/StringBuffer;

    #@2b
    .end local v1    # "s":Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@2e
    .line 283
    .local v1, "s":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    return-object v3

    #@37
    .line 281
    .local v1, "s":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    #@39
    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@3c
    const-string/jumbo v4, "@"

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    move-result-object v1

    #@43
    .local v1, "s":Ljava/lang/StringBuffer;
    goto :goto_0
.end method

.method public getUserAtHostPort()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 291
    const-string/jumbo v3, ""

    #@3
    .line 292
    .local v3, "user":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@5
    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    #@8
    move-result-object v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 293
    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@d
    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    .line 295
    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@17
    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 296
    .local v0, "host":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@21
    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getPort()I

    #@24
    move-result v1

    #@25
    .line 298
    .local v1, "port":I
    const/4 v2, 0x0

    #@26
    .line 299
    .local v2, "s":Ljava/lang/StringBuffer;
    const-string/jumbo v4, ""

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_1

    #@2f
    .line 300
    new-instance v2, Ljava/lang/StringBuffer;

    #@31
    .end local v2    # "s":Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@34
    .line 304
    .local v2, "s":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v4, -0x1

    #@35
    if-eq v1, v4, :cond_2

    #@37
    .line 305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v4

    #@3b
    const-string/jumbo v5, ":"

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    return-object v4

    #@4b
    .line 302
    .local v2, "s":Ljava/lang/StringBuffer;
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    #@4d
    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@50
    const-string/jumbo v5, "@"

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    move-result-object v2

    #@57
    .local v2, "s":Ljava/lang/StringBuffer;
    goto :goto_0

    #@58
    .line 307
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    return-object v4
.end method

.method public getUserParam()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1012
    const-string/jumbo v0, "user"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 367
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 368
    return-object v1

    #@6
    .line 369
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getPassword()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "user"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public hasGrParam()Z
    .locals 2

    #@0
    .prologue
    .line 1033
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "gr"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public hasLrParam()Z
    .locals 2

    #@0
    .prologue
    .line 1023
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "lr"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasTransport()Z
    .locals 1

    #@0
    .prologue
    .line 689
    const-string/jumbo v0, "transport"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isSecure()Z
    .locals 2

    #@0
    .prologue
    .line 859
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "sips"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public isSipURI()Z
    .locals 1

    #@0
    .prologue
    .line 867
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isUserTelephoneSubscriber()Z
    .locals 3

    #@0
    .prologue
    .line 456
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v2, "user"

    #@5
    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 457
    .local v0, "usrtype":Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    .line 458
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 459
    :cond_0
    const-string/jumbo v1, "phone"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    return v1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 491
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@6
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@9
    .line 489
    :cond_0
    return-void
.end method

.method public removeHeaders()V
    .locals 1

    #@0
    .prologue
    .line 497
    new-instance v0, Lgov/nist/core/NameValueList;

    #@2
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@5
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@7
    .line 496
    return-void
.end method

.method public removeMAddr()V
    .locals 2

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 475
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v1, "maddr"

    #@9
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@c
    .line 473
    :cond_0
    return-void
.end method

.method public removeMethod()V
    .locals 2

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 520
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v1, "method"

    #@9
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@c
    .line 518
    :cond_0
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@5
    .line 696
    return-void
.end method

.method public removeParameters()V
    .locals 1

    #@0
    .prologue
    .line 341
    new-instance v0, Lgov/nist/core/NameValueList;

    #@2
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@5
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@7
    .line 340
    return-void
.end method

.method public removePort()V
    .locals 1

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removePort()V

    #@5
    .line 511
    return-void
.end method

.method public removeTTL()V
    .locals 2

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 467
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v1, "ttl"

    #@9
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@c
    .line 465
    :cond_0
    return-void
.end method

.method public removeTransport()V
    .locals 2

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 483
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v1, "transport"

    #@9
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@c
    .line 481
    :cond_0
    return-void
.end method

.method public removeUser()V
    .locals 1

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removeUserInfo()V

    #@5
    .line 541
    return-void
.end method

.method public removeUserType()V
    .locals 2

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 505
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v1, "user"

    #@9
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@c
    .line 503
    :cond_0
    return-void
.end method

.method public setAuthority(Lgov/nist/javax/sip/address/Authority;)V
    .locals 0
    .param p1, "authority"    # Lgov/nist/javax/sip/address/Authority;

    #@0
    .prologue
    .line 562
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    .line 561
    return-void
.end method

.method public setDefaultParm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 552
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 553
    new-instance v0, Lgov/nist/core/NameValue;

    #@a
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@d
    .line 554
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@f
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@12
    .line 551
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_0
    return-void
.end method

.method public setGrParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1042
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "gr"

    #@5
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 1041
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 878
    new-instance v0, Lgov/nist/core/NameValue;

    #@2
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 879
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@7
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@a
    .line 877
    return-void
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .locals 1
    .param p1, "h"    # Lgov/nist/core/Host;

    #@0
    .prologue
    .line 569
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 570
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@b
    .line 571
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHost(Lgov/nist/core/Host;)V

    #@10
    .line 568
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 889
    new-instance v0, Lgov/nist/core/Host;

    #@2
    invoke-direct {v0, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    #@5
    .line 890
    .local v0, "h":Lgov/nist/core/Host;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->setHost(Lgov/nist/core/Host;)V

    #@8
    .line 888
    return-void
.end method

.method public setHostPort(Lgov/nist/core/HostPort;)V
    .locals 1
    .param p1, "hostPort"    # Lgov/nist/core/HostPort;

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 705
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@b
    .line 707
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHostPort(Lgov/nist/core/HostPort;)V

    #@10
    .line 703
    return-void
.end method

.method public setIsdnSubAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "isdnSubAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 639
    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@b
    .line 640
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setIsdnSubaddress(Ljava/lang/String;)V

    #@10
    .line 637
    return-void
.end method

.method public setLrParam()V
    .locals 3

    #@0
    .prologue
    .line 901
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "lr"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@9
    .line 900
    return-void
.end method

.method public setMAddr(Ljava/lang/String;)V
    .locals 4
    .param p1, "mAddr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 604
    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v3, "maddr"

    #@5
    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@8
    move-result-object v1

    #@9
    .line 605
    .local v1, "nameValue":Lgov/nist/core/NameValue;
    new-instance v0, Lgov/nist/core/Host;

    #@b
    invoke-direct {v0}, Lgov/nist/core/Host;-><init>()V

    #@e
    .line 606
    .local v0, "host":Lgov/nist/core/Host;
    invoke-virtual {v0, p1}, Lgov/nist/core/Host;->setAddress(Ljava/lang/String;)V

    #@11
    .line 607
    if-eqz v1, :cond_0

    #@13
    .line 608
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@16
    .line 603
    :goto_0
    return-void

    #@17
    .line 610
    :cond_0
    new-instance v1, Lgov/nist/core/NameValue;

    #@19
    .end local v1    # "nameValue":Lgov/nist/core/NameValue;
    const-string/jumbo v2, "maddr"

    #@1c
    invoke-direct {v1, v2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@1f
    .line 611
    .restart local v1    # "nameValue":Lgov/nist/core/NameValue;
    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@21
    invoke-virtual {v2, v1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@24
    goto :goto_0
.end method

.method public setMAddrParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "maddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 913
    if-nez p1, :cond_0

    #@2
    .line 914
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "bad maddr"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 915
    :cond_0
    const-string/jumbo v0, "maddr"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 912
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "method"

    #@5
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 629
    return-void
.end method

.method public setMethodParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 925
    const-string/jumbo v0, "method"

    #@3
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 924
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 947
    const-string/jumbo v1, "ttl"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 949
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 954
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@e
    invoke-virtual {v1, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@11
    .line 946
    return-void

    #@12
    .line 950
    :catch_0
    move-exception v0

    #@13
    .line 951
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/text/ParseException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "bad parameter "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@2d
    throw v1
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "p"    # I

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 656
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@b
    .line 657
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPort(I)V

    #@10
    .line 654
    return-void
.end method

.method public setQHeader(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@5
    .line 674
    return-void
.end method

.method public setQheaders(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "parms"    # Lgov/nist/core/NameValueList;

    #@0
    .prologue
    .line 596
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    #@2
    .line 595
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, "sip"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 93
    const-string/jumbo v0, "sips"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "bad scheme "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    #@32
    .line 91
    return-void
.end method

.method public setSecure(Z)V
    .locals 1
    .param p1, "secure"    # Z

    #@0
    .prologue
    .line 963
    if-eqz p1, :cond_0

    #@2
    .line 964
    const-string/jumbo v0, "sips"

    #@5
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    #@7
    .line 962
    :goto_0
    return-void

    #@8
    .line 966
    :cond_0
    const-string/jumbo v0, "sip"

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->scheme:Ljava/lang/String;

    #@d
    goto :goto_0
.end method

.method public setTTLParam(I)V
    .locals 3
    .param p1, "ttl"    # I

    #@0
    .prologue
    .line 976
    if-gtz p1, :cond_0

    #@2
    .line 977
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Bad ttl value"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 978
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 979
    new-instance v0, Lgov/nist/core/NameValue;

    #@11
    const-string/jumbo v1, "ttl"

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@1b
    .line 980
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@1d
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@20
    .line 975
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_1
    return-void
.end method

.method public setTelephoneSubscriber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .locals 0
    .param p1, "tel"    # Lgov/nist/javax/sip/address/TelephoneNumber;

    #@0
    .prologue
    .line 648
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    .line 647
    return-void
.end method

.method public setTransportParam(Ljava/lang/String;)V
    .locals 5
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 995
    if-nez p1, :cond_0

    #@3
    .line 996
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "null arg"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 997
    :cond_0
    const-string/jumbo v1, "UDP"

    #@f
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 998
    const-string/jumbo v1, "TLS"

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_2

    #@1e
    .line 1001
    :cond_1
    new-instance v0, Lgov/nist/core/NameValue;

    #@20
    const-string/jumbo v1, "transport"

    #@23
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@2a
    .line 1002
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2c
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@2f
    .line 994
    return-void

    #@30
    .line 999
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_2
    const-string/jumbo v1, "TCP"

    #@33
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_1

    #@39
    .line 1000
    const-string/jumbo v1, "SCTP"

    #@3c
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_1

    #@42
    .line 1004
    new-instance v1, Ljava/text/ParseException;

    #@44
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v3, "bad transport "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@5b
    throw v1
.end method

.method public setUriParameter(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@5
    .line 681
    return-void
.end method

.method public setUriParm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 588
    new-instance v0, Lgov/nist/core/NameValue;

    #@2
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 589
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@7
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@a
    .line 587
    return-void
.end method

.method public setUriParms(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "parms"    # Lgov/nist/core/NameValueList;

    #@0
    .prologue
    .line 578
    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    .line 577
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "uname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 533
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@b
    .line 536
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setUser(Ljava/lang/String;)V

    #@10
    .line 531
    return-void
.end method

.method public setUserParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "usertype"    # Ljava/lang/String;

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "user"

    #@5
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 621
    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 377
    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    #@6
    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@b
    .line 378
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPassword(Ljava/lang/String;)V

    #@10
    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 262
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
