.class public Lgov/nist/javax/sip/header/ims/PChargingVector;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PChargingVector.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 53
    const-string v0, "P-Charging-Vector"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected greylist encodeBody()Ljava/lang/String;
    .registers 7

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, "encoding":Ljava/lang/StringBuffer;
    const-string v1, "icid-value"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v1

    .line 72
    .local v1, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PChargingVector;->parameters:Lgov/nist/core/NameValueList;

    const-string v3, "icid-generated-at"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "="

    const-string v5, ";"

    if-eqz v2, :cond_2f

    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getICIDGeneratedAt()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_2f
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PChargingVector;->parameters:Lgov/nist/core/NameValueList;

    const-string v3, "term-ioi"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 83
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getTerminatingIOI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_4c
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PChargingVector;->parameters:Lgov/nist/core/NameValueList;

    const-string v3, "orig-ioi"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 88
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getOriginatingIOI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_69
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist getICID()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "icid-value"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getICIDGeneratedAt()Ljava/lang/String;
    .registers 2

    .line 135
    const-string v0, "icid-generated-at"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getOriginatingIOI()Ljava/lang/String;
    .registers 2

    .line 168
    const-string v0, "orig-ioi"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTerminatingIOI()Ljava/lang/String;
    .registers 2

    .line 199
    const-string v0, "term-ioi"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist setICID(Ljava/lang/String;)V
    .registers 4
    .param p1, "icid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 117
    if-eqz p1, :cond_8

    .line 122
    const-string v0, "icid-value"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 118
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Vector, setICID(), the icid parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setICIDGeneratedAt(Ljava/lang/String;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 150
    if-eqz p1, :cond_8

    .line 155
    const-string v0, "icid-generated-at"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 151
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Vector, setICIDGeneratedAt(), the host parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setOriginatingIOI(Ljava/lang/String;)V
    .registers 4
    .param p1, "origIOI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 183
    const-string v0, "orig-ioi"

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_f

    .line 186
    :cond_b
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 184
    :cond_f
    :goto_f
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->removeParameter(Ljava/lang/String;)V

    .line 188
    :goto_12
    return-void
.end method

.method public greylist setTerminatingIOI(Ljava/lang/String;)V
    .registers 4
    .param p1, "termIOI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 214
    const-string v0, "term-ioi"

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_f

    .line 217
    :cond_b
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 215
    :cond_f
    :goto_f
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->removeParameter(Ljava/lang/String;)V

    .line 219
    :goto_12
    return-void
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
