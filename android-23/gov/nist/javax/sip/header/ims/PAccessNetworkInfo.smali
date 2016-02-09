.class public Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PAccessNetworkInfo.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private accessType:Ljava/lang/String;

.field private extendAccessInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "P-Access-Network-Info"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 61
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->parameters:Lgov/nist/core/NameValueList;

    #@8
    const-string/jumbo v1, ";"

    #@b
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@e
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessTypeVal"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    #@3
    .line 69
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setAccessType(Ljava/lang/String;)V

    #@6
    .line 67
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 283
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    #@6
    .line 284
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 252
    .local v0, "encoding":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 253
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 255
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->parameters:Lgov/nist/core/NameValueList;

    #@14
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "; "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->parameters:Lgov/nist/core/NameValueList;

    #@28
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 260
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    if-eqz v1, :cond_2

    #@3d
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v2, "; "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 262
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    .line 265
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 276
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getAccessType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCGI3GPP()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "cgi-3gpp"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getCI3GPP2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 190
    const-string/jumbo v0, "ci-3gpp2"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getDSLLocation()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 167
    const-string/jumbo v0, "dsl-location"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getExtensionAccessInfo()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->extendAccessInfo:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getUtranCellID3GPP()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    const-string/jumbo v0, "utran-cell-id-3gpp"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setAccessType(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessTypeVal"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    if-nez p1, :cond_0

    #@2
    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 81
    const-string/jumbo v1, "JAIN-SIP Exception, P-Access-Network-Info, setAccessType(), the accessType parameter is null."

    #@7
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 84
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    #@d
    .line 78
    return-void
.end method

.method public setCGI3GPP(Ljava/lang/String;)V
    .locals 2
    .param p1, "cgi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    if-nez p1, :cond_0

    #@2
    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 104
    const-string/jumbo v1, "JAIN-SIP Exception, P-Access-Network-Info, setCGI3GPP(), the cgi parameter is null."

    #@7
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 107
    :cond_0
    const-string/jumbo v0, "cgi-3gpp"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 100
    return-void
.end method

.method public setCI3GPP2(Ljava/lang/String;)V
    .locals 2
    .param p1, "ci3Gpp2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    if-nez p1, :cond_0

    #@2
    .line 178
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 179
    const-string/jumbo v1, "JAIN-SIP Exception, P-Access-Network-Info, setCI3GPP2(), the ci3Gpp2 parameter is null."

    #@7
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 182
    :cond_0
    const-string/jumbo v0, "ci-3gpp2"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 176
    return-void
.end method

.method public setDSLLocation(Ljava/lang/String;)V
    .locals 2
    .param p1, "dslLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    if-nez p1, :cond_0

    #@2
    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 155
    const-string/jumbo v1, "JAIN-SIP Exception, P-Access-Network-Info, setDSLLocation(), the dslLocation parameter is null."

    #@7
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 158
    :cond_0
    const-string/jumbo v0, "dsl-location"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 151
    return-void
.end method

.method public setExtensionAccessInfo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "extendAccessInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    if-nez p1, :cond_0

    #@2
    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 235
    const-string/jumbo v1, "JAIN-SIP Exception, P-Access-Network-Info, setExtendAccessInfo(), the extendAccessInfo parameter is null."

    #@7
    .line 234
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 240
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->extendAccessInfo:Ljava/lang/Object;

    #@d
    .line 231
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 206
    const-string/jumbo v1, "cgi-3gpp"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 207
    const-string/jumbo v1, "utran-cell-id-3gpp"

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    .line 206
    if-nez v1, :cond_0

    #@12
    .line 208
    const-string/jumbo v1, "dsl-location"

    #@15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    .line 206
    if-nez v1, :cond_0

    #@1b
    .line 209
    const-string/jumbo v1, "ci-3gpp2"

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v1

    #@22
    .line 206
    if-eqz v1, :cond_1

    #@24
    .line 211
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-super {p0, p1, v1}, Lgov/nist/javax/sip/header/ParametersHeader;->setQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 200
    :goto_0
    return-void

    #@2c
    .line 218
    :cond_1
    invoke-super {p0, p1, p2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    #@2f
    goto :goto_0

    #@30
    .line 212
    :catch_0
    move-exception v0

    #@31
    .local v0, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public setUtranCellID3GPP(Ljava/lang/String;)V
    .locals 2
    .param p1, "utranCellID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    if-nez p1, :cond_0

    #@2
    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 130
    const-string/jumbo v1, "JAIN-SIP Exception, P-Access-Network-Info, setUtranCellID3GPP(), the utranCellID parameter is null."

    #@7
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 133
    :cond_0
    const-string/jumbo v0, "utran-cell-id-3gpp"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 126
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
