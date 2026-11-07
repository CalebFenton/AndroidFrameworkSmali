.class public final Lgov/nist/javax/sip/header/AuthenticationInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AuthenticationInfo.java"

# interfaces
.implements Ljavax/sip/header/AuthenticationInfoHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x3cac35432dc8d791L


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 50
    const-string v0, "Authentication-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public greylist add(Lgov/nist/core/NameValue;)V
    .registers 3
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    .line 55
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 56
    return-void
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getAuthInfo(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getAuthenticationInfo()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->encodeBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCNonce()Ljava/lang/String;
    .registers 2

    .line 97
    const-string v0, "cnonce"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNextNonce()Ljava/lang/String;
    .registers 2

    .line 107
    const-string v0, "nextnonce"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNonceCount()I
    .registers 2

    .line 117
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getQop()Ljava/lang/String;
    .registers 2

    .line 127
    const-string v0, "qop"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getResponse()Ljava/lang/String;
    .registers 2

    .line 136
    const-string v0, "rspauth"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist setCNonce(Ljava/lang/String;)V
    .registers 3
    .param p1, "cNonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 148
    const-string v0, "cnonce"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public greylist setNextNonce(Ljava/lang/String;)V
    .registers 3
    .param p1, "nextNonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 160
    const-string v0, "nextnonce"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public greylist setNonceCount(I)V
    .registers 7
    .param p1, "nonceCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    if-ltz p1, :cond_2a

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "nc":Ljava/lang/String;
    const-string v2, "00000000"

    .line 177
    .local v2, "base":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .end local v1    # "nc":Ljava/lang/String;
    .local v0, "nc":Ljava/lang/String;
    const-string v1, "nc"

    invoke-virtual {p0, v1, v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 173
    .end local v0    # "nc":Ljava/lang/String;
    .end local v2    # "base":Ljava/lang/String;
    :cond_2a
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "bad value"

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
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

    .line 208
    if-eqz p1, :cond_99

    .line 210
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 211
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-nez v0, :cond_95

    .line 212
    new-instance v1, Lgov/nist/core/NameValue;

    invoke-direct {v1, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 213
    const-string v1, "qop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 214
    const-string v1, "nextnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 215
    const-string v2, "realm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 216
    const-string v2, "cnonce"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 217
    const-string v2, "nonce"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 218
    const-string v2, "opaque"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 219
    const-string v2, "username"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 220
    const-string v2, "domain"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 222
    const-string v1, "rspauth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 223
    :cond_62
    if-eqz p2, :cond_8d

    .line 225
    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 229
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 231
    :cond_6f
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    goto :goto_98

    .line 226
    :cond_73
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Unexpected DOUBLE_QUOTE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 224
    :cond_8d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_95
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 234
    :goto_98
    return-void

    .line 209
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setQop(Ljava/lang/String;)V
    .registers 3
    .param p1, "qop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 190
    const-string v0, "qop"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public greylist setResponse(Ljava/lang/String;)V
    .registers 3
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 204
    const-string v0, "rspauth"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method
