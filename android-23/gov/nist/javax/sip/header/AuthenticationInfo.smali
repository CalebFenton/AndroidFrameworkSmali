.class public final Lgov/nist/javax/sip/header/AuthenticationInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AuthenticationInfo.java"

# interfaces
.implements Ljavax/sip/header/AuthenticationInfoHeader;


# static fields
.field private static final serialVersionUID:J = -0x3cac35432dc8d791L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 50
    const-string/jumbo v0, "Authentication-Info"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 51
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    #@8
    const-string/jumbo v1, ","

    #@b
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@e
    .line 49
    return-void
.end method


# virtual methods
.method public add(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@5
    .line 54
    return-void
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAuthInfo(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAuthenticationInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->encodeBody()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCNonce()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    const-string/jumbo v0, "cnonce"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getNextNonce()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    const-string/jumbo v0, "nextnonce"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getNonceCount()I
    .locals 1

    #@0
    .prologue
    .line 117
    const-string/jumbo v0, "nc"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameterAsInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, "qop"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    const-string/jumbo v0, "rspauth"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setCNonce(Ljava/lang/String;)V
    .locals 1
    .param p1, "cNonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    const-string/jumbo v0, "cnonce"

    #@3
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 147
    return-void
.end method

.method public setNextNonce(Ljava/lang/String;)V
    .locals 1
    .param p1, "nextNonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    const-string/jumbo v0, "nextnonce"

    #@3
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 159
    return-void
.end method

.method public setNonceCount(I)V
    .locals 5
    .param p1, "nonceCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 172
    if-gez p1, :cond_0

    #@3
    .line 173
    new-instance v2, Ljava/text/ParseException;

    #@5
    const-string/jumbo v3, "bad value"

    #@8
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@b
    throw v2

    #@c
    .line 174
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 176
    .local v1, "nc":Ljava/lang/String;
    const-string/jumbo v0, "00000000"

    #@13
    .line 177
    .local v0, "base":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1b
    move-result v3

    #@1c
    rsub-int/lit8 v3, v3, 0x8

    #@1e
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 178
    const-string/jumbo v2, "nc"

    #@31
    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 171
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
    .line 208
    if-nez p1, :cond_0

    #@2
    .line 209
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null name"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 210
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@14
    move-result-object v0

    #@15
    .line 211
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-nez v0, :cond_5

    #@17
    .line 212
    new-instance v0, Lgov/nist/core/NameValue;

    #@19
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@1c
    .line 213
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    const-string/jumbo v1, "qop"

    #@1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 214
    const-string/jumbo v1, "nextnonce"

    #@28
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2b
    move-result v1

    #@2c
    .line 213
    if-nez v1, :cond_1

    #@2e
    .line 215
    const-string/jumbo v1, "realm"

    #@31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@34
    move-result v1

    #@35
    .line 213
    if-nez v1, :cond_1

    #@37
    .line 216
    const-string/jumbo v1, "cnonce"

    #@3a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3d
    move-result v1

    #@3e
    .line 213
    if-nez v1, :cond_1

    #@40
    .line 217
    const-string/jumbo v1, "nonce"

    #@43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@46
    move-result v1

    #@47
    .line 213
    if-nez v1, :cond_1

    #@49
    .line 218
    const-string/jumbo v1, "opaque"

    #@4c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4f
    move-result v1

    #@50
    .line 213
    if-nez v1, :cond_1

    #@52
    .line 219
    const-string/jumbo v1, "username"

    #@55
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@58
    move-result v1

    #@59
    .line 213
    if-nez v1, :cond_1

    #@5b
    .line 220
    const-string/jumbo v1, "domain"

    #@5e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@61
    move-result v1

    #@62
    .line 213
    if-nez v1, :cond_1

    #@64
    .line 221
    const-string/jumbo v1, "nextnonce"

    #@67
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6a
    move-result v1

    #@6b
    .line 213
    if-nez v1, :cond_1

    #@6d
    .line 222
    const-string/jumbo v1, "rspauth"

    #@70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@73
    move-result v1

    #@74
    .line 213
    if-eqz v1, :cond_4

    #@76
    .line 223
    :cond_1
    if-nez p2, :cond_2

    #@78
    .line 224
    new-instance v1, Ljava/lang/NullPointerException;

    #@7a
    const-string/jumbo v2, "null value"

    #@7d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@80
    throw v1

    #@81
    .line 225
    :cond_2
    const-string/jumbo v1, "\""

    #@84
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@87
    move-result v1

    #@88
    if-eqz v1, :cond_3

    #@8a
    .line 226
    new-instance v1, Ljava/text/ParseException;

    #@8c
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    const-string/jumbo v3, " : Unexpected DOUBLE_QUOTE"

    #@98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    .line 228
    const/4 v3, 0x0

    #@a1
    .line 226
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@a4
    throw v1

    #@a5
    .line 229
    :cond_3
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    #@a8
    .line 231
    :cond_4
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    #@ab
    .line 207
    :goto_0
    return-void

    #@ac
    .line 233
    :cond_5
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@af
    goto :goto_0
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 1
    .param p1, "qop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    const-string/jumbo v0, "qop"

    #@3
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 189
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    const-string/jumbo v0, "rspauth"

    #@3
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 203
    return-void
.end method
