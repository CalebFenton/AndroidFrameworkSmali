.class public Lgov/nist/javax/sip/header/ims/PChargingVector;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PChargingVector.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 53
    const-string/jumbo v0, "P-Charging-Vector"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 51
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 71
    .local v0, "encoding":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "icid-value"

    #@8
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@b
    move-result-object v1

    #@c
    .line 72
    .local v1, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@f
    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PChargingVector;->parameters:Lgov/nist/core/NameValueList;

    #@11
    const-string/jumbo v3, "icid-generated-at"

    #@14
    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 77
    const-string/jumbo v2, ";"

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    move-result-object v2

    #@21
    .line 78
    const-string/jumbo v3, "icid-generated-at"

    #@24
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    move-result-object v2

    #@28
    .line 78
    const-string/jumbo v3, "="

    #@2b
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v2

    #@2f
    .line 79
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getICIDGeneratedAt()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 81
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PChargingVector;->parameters:Lgov/nist/core/NameValueList;

    #@38
    const-string/jumbo v3, "term-ioi"

    #@3b
    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_1

    #@41
    .line 83
    const-string/jumbo v2, ";"

    #@44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    move-result-object v2

    #@48
    const-string/jumbo v3, "term-ioi"

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4e
    move-result-object v2

    #@4f
    .line 84
    const-string/jumbo v3, "="

    #@52
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@55
    move-result-object v2

    #@56
    .line 84
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getTerminatingIOI()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5d
    .line 86
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PChargingVector;->parameters:Lgov/nist/core/NameValueList;

    #@5f
    const-string/jumbo v3, "orig-ioi"

    #@62
    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_2

    #@68
    .line 88
    const-string/jumbo v2, ";"

    #@6b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6e
    move-result-object v2

    #@6f
    const-string/jumbo v3, "orig-ioi"

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@75
    move-result-object v2

    #@76
    .line 89
    const-string/jumbo v3, "="

    #@79
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7c
    move-result-object v2

    #@7d
    .line 89
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getOriginatingIOI()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@84
    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    return-object v2
.end method

.method public getICID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "icid-value"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getICIDGeneratedAt()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 135
    const-string/jumbo v0, "icid-generated-at"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getOriginatingIOI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 168
    const-string/jumbo v0, "orig-ioi"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getTerminatingIOI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 199
    const-string/jumbo v0, "term-ioi"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setICID(Ljava/lang/String;)V
    .locals 2
    .param p1, "icid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    if-nez p1, :cond_0

    #@2
    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 119
    const-string/jumbo v1, "JAIN-SIP Exception, P-Charging-Vector, setICID(), the icid parameter is null."

    #@7
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 122
    :cond_0
    const-string/jumbo v0, "icid-value"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 115
    return-void
.end method

.method public setICIDGeneratedAt(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    if-nez p1, :cond_0

    #@2
    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 152
    const-string/jumbo v1, "JAIN-SIP Exception, P-Charging-Vector, setICIDGeneratedAt(), the host parameter is null."

    #@7
    .line 151
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 155
    :cond_0
    const-string/jumbo v0, "icid-generated-at"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 148
    return-void
.end method

.method public setOriginatingIOI(Ljava/lang/String;)V
    .locals 1
    .param p1, "origIOI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 184
    :cond_0
    const-string/jumbo v0, "orig-ioi"

    #@b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->removeParameter(Ljava/lang/String;)V

    #@e
    .line 181
    :goto_0
    return-void

    #@f
    .line 186
    :cond_1
    const-string/jumbo v0, "orig-ioi"

    #@12
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    goto :goto_0
.end method

.method public setTerminatingIOI(Ljava/lang/String;)V
    .locals 1
    .param p1, "termIOI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 215
    :cond_0
    const-string/jumbo v0, "term-ioi"

    #@b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->removeParameter(Ljava/lang/String;)V

    #@e
    .line 212
    :goto_0
    return-void

    #@f
    .line 217
    :cond_1
    const-string/jumbo v0, "term-ioi"

    #@12
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    goto :goto_0
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
    .line 222
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
