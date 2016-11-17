.class public Lsun/net/www/protocol/http/AuthenticationHeader;
.super Ljava/lang/Object;
.source "AuthenticationHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    }
.end annotation


# static fields
.field static authPref:Ljava/lang/String;


# instance fields
.field dontUseNegotiate:Z

.field private final hci:Lsun/net/www/protocol/http/HttpCallerInfo;

.field hdrname:Ljava/lang/String;

.field preferred:Lsun/net/www/HeaderParser;

.field preferred_r:Ljava/lang/String;

.field rsp:Lsun/net/www/MessageHeader;

.field schemes:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@3
    .line 97
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@5
    const-string/jumbo v1, "http.auth.preference"

    #@8
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@b
    .line 96
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@13
    .line 105
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 106
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@19
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@1f
    .line 107
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@21
    const-string/jumbo v1, "spnego"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_0

    #@2a
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@2c
    const-string/jumbo v1, "kerberos"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 108
    :cond_0
    const-string/jumbo v0, "negotiate"

    #@38
    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@3a
    .line 79
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V
    .locals 1
    .param p1, "hdrname"    # Ljava/lang/String;
    .param p2, "response"    # Lsun/net/www/MessageHeader;
    .param p3, "hci"    # Lsun/net/www/protocol/http/HttpCallerInfo;
    .param p4, "dontUseNegotiate"    # Z

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    #@6
    .line 121
    iput-object p3, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    #@8
    .line 122
    iput-boolean p4, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    #@a
    .line 123
    iput-object p2, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->rsp:Lsun/net/www/MessageHeader;

    #@c
    .line 124
    iput-object p1, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hdrname:Ljava/lang/String;

    #@e
    .line 125
    new-instance v0, Ljava/util/HashMap;

    #@10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@13
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    #@15
    .line 126
    invoke-direct {p0}, Lsun/net/www/protocol/http/AuthenticationHeader;->parse()V

    #@18
    .line 120
    return-void
.end method

.method private parse()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 147
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->rsp:Lsun/net/www/MessageHeader;

    #@3
    iget-object v11, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hdrname:Ljava/lang/String;

    #@5
    invoke-virtual {v10, v11}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .line 148
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v10

    #@d
    if-eqz v10, :cond_4

    #@f
    .line 149
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v6

    #@13
    check-cast v6, Ljava/lang/String;

    #@15
    .line 150
    .local v6, "raw":Ljava/lang/String;
    new-instance v0, Lsun/net/www/HeaderParser;

    #@17
    invoke-direct {v0, v6}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    #@1a
    .line 151
    .local v0, "hp":Lsun/net/www/HeaderParser;
    invoke-virtual {v0}, Lsun/net/www/HeaderParser;->keys()Ljava/util/Iterator;

    #@1d
    move-result-object v4

    #@1e
    .line 153
    .local v4, "keys":Ljava/util/Iterator;
    const/4 v2, 0x0

    #@1f
    .local v2, "i":I
    const/4 v5, -0x1

    #@20
    .local v5, "lastSchemeIndex":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v10

    #@24
    if-eqz v10, :cond_3

    #@26
    .line 154
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    .line 155
    invoke-virtual {v0, v2}, Lsun/net/www/HeaderParser;->findValue(I)Ljava/lang/String;

    #@2c
    move-result-object v10

    #@2d
    if-nez v10, :cond_2

    #@2f
    .line 156
    const/4 v10, -0x1

    #@30
    if-eq v5, v10, :cond_1

    #@32
    .line 157
    invoke-virtual {v0, v5, v2}, Lsun/net/www/HeaderParser;->subsequence(II)Lsun/net/www/HeaderParser;

    #@35
    move-result-object v1

    #@36
    .line 158
    .local v1, "hpn":Lsun/net/www/HeaderParser;
    invoke-virtual {v1, v12}, Lsun/net/www/HeaderParser;->findKey(I)Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    .line 159
    .local v7, "scheme":Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    #@3c
    new-instance v11, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    #@3e
    invoke-direct {v11, v1, v6}, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;-><init>(Lsun/net/www/HeaderParser;Ljava/lang/String;)V

    #@41
    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 161
    .end local v1    # "hpn":Lsun/net/www/HeaderParser;
    .end local v7    # "scheme":Ljava/lang/String;
    :cond_1
    move v5, v2

    #@45
    .line 153
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_1

    #@48
    .line 164
    :cond_3
    if-le v2, v5, :cond_0

    #@4a
    .line 165
    invoke-virtual {v0, v5, v2}, Lsun/net/www/HeaderParser;->subsequence(II)Lsun/net/www/HeaderParser;

    #@4d
    move-result-object v1

    #@4e
    .line 166
    .restart local v1    # "hpn":Lsun/net/www/HeaderParser;
    invoke-virtual {v1, v12}, Lsun/net/www/HeaderParser;->findKey(I)Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    .line 167
    .restart local v7    # "scheme":Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    #@54
    new-instance v11, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    #@56
    invoke-direct {v11, v1, v6}, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;-><init>(Lsun/net/www/HeaderParser;Ljava/lang/String;)V

    #@59
    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    goto :goto_0

    #@5d
    .line 174
    .end local v0    # "hp":Lsun/net/www/HeaderParser;
    .end local v1    # "hpn":Lsun/net/www/HeaderParser;
    .end local v2    # "i":I
    .end local v4    # "keys":Ljava/util/Iterator;
    .end local v5    # "lastSchemeIndex":I
    .end local v6    # "raw":Ljava/lang/String;
    .end local v7    # "scheme":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    #@5e
    .line 175
    .local v9, "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    sget-object v10, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@60
    if-eqz v10, :cond_5

    #@62
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    #@64
    sget-object v11, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@66
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    move-result-object v9

    #@6a
    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    #@6c
    .local v9, "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-nez v9, :cond_e

    #@6e
    .line 177
    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_5
    if-nez v9, :cond_6

    #@70
    iget-boolean v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    #@72
    if-eqz v10, :cond_a

    #@74
    .line 187
    :cond_6
    :goto_2
    if-nez v9, :cond_7

    #@76
    iget-boolean v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    #@78
    if-eqz v10, :cond_c

    #@7a
    .line 207
    :cond_7
    :goto_3
    if-nez v9, :cond_8

    #@7c
    .line 208
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    #@7e
    const-string/jumbo v11, "digest"

    #@81
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    move-result-object v9

    #@85
    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    #@87
    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-nez v9, :cond_8

    #@89
    .line 209
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    #@8b
    const-string/jumbo v11, "ntlm"

    #@8e
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    move-result-object v9

    #@92
    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    #@94
    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-nez v9, :cond_8

    #@96
    .line 210
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    #@98
    const-string/jumbo v11, "basic"

    #@9b
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    move-result-object v9

    #@9f
    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    #@a1
    .line 220
    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    #@a3
    .line 221
    iget-object v10, v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;->parser:Lsun/net/www/HeaderParser;

    #@a5
    iput-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    #@a7
    .line 222
    iget-object v10, v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;->raw:Ljava/lang/String;

    #@a9
    iput-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred_r:Ljava/lang/String;

    #@ab
    .line 146
    :cond_9
    return-void

    #@ac
    .line 178
    :cond_a
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    #@ae
    const-string/jumbo v11, "negotiate"

    #@b1
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    move-result-object v8

    #@b5
    check-cast v8, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    #@b7
    .line 179
    .local v8, "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-eqz v8, :cond_6

    #@b9
    .line 180
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    #@bb
    if-eqz v10, :cond_b

    #@bd
    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@bf
    iget-object v11, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    #@c1
    const-string/jumbo v12, "Negotiate"

    #@c4
    invoke-direct {v10, v11, v12}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    #@c7
    invoke-static {v10}, Lsun/net/www/protocol/http/NegotiateAuthentication;->isSupported(Lsun/net/www/protocol/http/HttpCallerInfo;)Z

    #@ca
    move-result v10

    #@cb
    if-eqz v10, :cond_b

    #@cd
    .line 183
    .end local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :goto_5
    move-object v9, v8

    #@ce
    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_2

    #@cf
    .line 181
    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    .restart local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_b
    const/4 v8, 0x0

    #@d0
    .local v8, "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_5

    #@d1
    .line 188
    .end local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_c
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    #@d3
    const-string/jumbo v11, "kerberos"

    #@d6
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d9
    move-result-object v8

    #@da
    check-cast v8, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    #@dc
    .line 189
    .local v8, "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-eqz v8, :cond_7

    #@de
    .line 200
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    #@e0
    if-eqz v10, :cond_d

    #@e2
    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    #@e4
    iget-object v11, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    #@e6
    const-string/jumbo v12, "Kerberos"

    #@e9
    invoke-direct {v10, v11, v12}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    #@ec
    invoke-static {v10}, Lsun/net/www/protocol/http/NegotiateAuthentication;->isSupported(Lsun/net/www/protocol/http/HttpCallerInfo;)Z

    #@ef
    move-result v10

    #@f0
    if-eqz v10, :cond_d

    #@f2
    .line 203
    .end local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :goto_6
    move-object v9, v8

    #@f3
    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_3

    #@f4
    .line 201
    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    .restart local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_d
    const/4 v8, 0x0

    #@f5
    .local v8, "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_6

    #@f6
    .line 215
    .end local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_e
    iget-boolean v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    #@f8
    if-eqz v10, :cond_8

    #@fa
    sget-object v10, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    #@fc
    const-string/jumbo v11, "negotiate"

    #@ff
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@102
    move-result v10

    #@103
    if-eqz v10, :cond_8

    #@105
    .line 216
    const/4 v9, 0x0

    #@106
    .local v9, "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_4
.end method


# virtual methods
.method public getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    #@2
    return-object v0
.end method

.method public headerParser()Lsun/net/www/HeaderParser;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    #@2
    return-object v0
.end method

.method public isPresent()Z
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public raw()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred_r:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public scheme()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 239
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 240
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Lsun/net/www/HeaderParser;->findKey(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 242
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AuthenticationHeader: prefer "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred_r:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
