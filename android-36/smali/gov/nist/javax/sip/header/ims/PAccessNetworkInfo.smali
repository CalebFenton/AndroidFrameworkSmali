.class public Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PAccessNetworkInfo.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private greylist accessType:Ljava/lang/String;

.field private greylist extendAccessInfo:Ljava/lang/Object;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 60
    const-string v0, "P-Access-Network-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "accessTypeVal"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setAccessType(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 283
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    .line 284
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    return-object v0
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 5

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    .local v0, "encoding":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 253
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :cond_12
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    const-string v2, "; "

    if-nez v1, :cond_36

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v3}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :cond_36
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 276
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist getAccessType()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getCGI3GPP()Ljava/lang/String;
    .registers 2

    .line 116
    const-string v0, "cgi-3gpp"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCI3GPP2()Ljava/lang/String;
    .registers 2

    .line 190
    const-string v0, "ci-3gpp2"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDSLLocation()Ljava/lang/String;
    .registers 2

    .line 167
    const-string v0, "dsl-location"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getExtensionAccessInfo()Ljava/lang/Object;
    .registers 2

    .line 245
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->extendAccessInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist getUtranCellID3GPP()Ljava/lang/String;
    .registers 2

    .line 142
    const-string v0, "utran-cell-id-3gpp"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist setAccessType(Ljava/lang/String;)V
    .registers 4
    .param p1, "accessTypeVal"    # Ljava/lang/String;

    .line 79
    if-eqz p1, :cond_5

    .line 84
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    .line 85
    return-void

    .line 80
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setAccessType(), the accessType parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setCGI3GPP(Ljava/lang/String;)V
    .registers 4
    .param p1, "cgi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 102
    if-eqz p1, :cond_8

    .line 107
    const-string v0, "cgi-3gpp"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 103
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setCGI3GPP(), the cgi parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setCI3GPP2(Ljava/lang/String;)V
    .registers 4
    .param p1, "ci3Gpp2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 177
    if-eqz p1, :cond_8

    .line 182
    const-string v0, "ci-3gpp2"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .line 178
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setCI3GPP2(), the ci3Gpp2 parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setDSLLocation(Ljava/lang/String;)V
    .registers 4
    .param p1, "dslLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 153
    if-eqz p1, :cond_8

    .line 158
    const-string v0, "dsl-location"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 154
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setDSLLocation(), the dslLocation parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setExtensionAccessInfo(Ljava/lang/Object;)V
    .registers 4
    .param p1, "extendAccessInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 233
    if-eqz p1, :cond_5

    .line 240
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->extendAccessInfo:Ljava/lang/Object;

    .line 242
    return-void

    .line 234
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setExtendAccessInfo(), the extendAccessInfo parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 206
    const-string v0, "cgi-3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 207
    const-string v0, "utran-cell-id-3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 208
    const-string v0, "dsl-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 209
    const-string v0, "ci-3gpp2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_25

    .line 218
    :cond_21
    invoke-super {p0, p1, p2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2f

    .line 211
    :cond_25
    :goto_25
    :try_start_25
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/text/ParseException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_2e

    .line 212
    :catch_2d
    move-exception v0

    .line 214
    :goto_2e
    nop

    .line 222
    :goto_2f
    return-void
.end method

.method public greylist setUtranCellID3GPP(Ljava/lang/String;)V
    .registers 4
    .param p1, "utranCellID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 128
    if-eqz p1, :cond_8

    .line 133
    const-string v0, "utran-cell-id-3gpp"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 129
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Access-Network-Info, setUtranCellID3GPP(), the utranCellID parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
