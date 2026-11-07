.class public abstract Lgov/nist/javax/sip/header/ims/SecurityAgree;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SecurityAgree.java"


# instance fields
.field private greylist secMechanism:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 86
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>()V

    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 360
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/SecurityAgree;

    .line 361
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 362
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    .line 363
    :cond_e
    return-object v0
.end method

.method public greylist encodeBody()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 348
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 350
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;

    .line 351
    .local v0, "o":Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getSecurityMechanism()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;->getSecurityMechanism()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 352
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 351
    :goto_1f
    return v1

    .line 354
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;
    :cond_20
    return v1
.end method

.method public greylist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 285
    const-string v0, "alg"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getEncryptionAlgorithm()Ljava/lang/String;
    .registers 2

    .line 277
    const-string v0, "ealg"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMode()Ljava/lang/String;
    .registers 2

    .line 301
    const-string v0, "mod"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getPortClient()I
    .registers 2

    .line 325
    const-string v0, "port-c"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getPortServer()I
    .registers 2

    .line 333
    const-string v0, "port-s"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getPreference()F
    .registers 2

    .line 341
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public greylist getProtocol()Ljava/lang/String;
    .registers 2

    .line 293
    const-string v0, "prot"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSPIClient()I
    .registers 2

    .line 309
    const-string v0, "spi-c"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getSPIServer()I
    .registers 2

    .line 317
    const-string v0, "spi-s"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getSecurityMechanism()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setAlgorithm(Ljava/lang/String;)V
    .registers 4
    .param p1, "alg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 160
    if-eqz p1, :cond_8

    .line 164
    const-string v0, "alg"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 161
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setAlgorithm(), the algorithm parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setEncryptionAlgorithm(Ljava/lang/String;)V
    .registers 4
    .param p1, "ealg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 146
    if-eqz p1, :cond_8

    .line 151
    const-string v0, "ealg"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 147
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setEncryptionAlgorithm(), the encryption-algorithm parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMode(Ljava/lang/String;)V
    .registers 4
    .param p1, "mod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 186
    if-eqz p1, :cond_8

    .line 190
    const-string v0, "mod"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 187
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setMode(), the mode parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 93
    if-eqz p2, :cond_4a

    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 97
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-nez v0, :cond_46

    .line 99
    new-instance v1, Lgov/nist/core/NameValue;

    invoke-direct {v1, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 102
    const-string v1, "d-ver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 104
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 106
    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_42

    .line 107
    :cond_28
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

    .line 111
    :cond_42
    :goto_42
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    goto :goto_49

    .line 115
    :cond_46
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 118
    :goto_49
    return-void

    .line 94
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setPortClient(I)V
    .registers 4
    .param p1, "portC"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 225
    if-ltz p1, :cond_8

    .line 229
    const-string v0, "port-c"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    .line 230
    return-void

    .line 226
    :cond_8
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setPortClient(), the port-c parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setPortServer(I)V
    .registers 4
    .param p1, "portS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 238
    if-ltz p1, :cond_8

    .line 242
    const-string v0, "port-s"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    .line 243
    return-void

    .line 239
    :cond_8
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setPortServer(), the port-s parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setPreference(F)V
    .registers 4
    .param p1, "q"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_b

    .line 258
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;F)V

    .line 259
    return-void

    .line 255
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setPreference(), the preference (q) parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setProtocol(Ljava/lang/String;)V
    .registers 4
    .param p1, "prot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 173
    if-eqz p1, :cond_8

    .line 177
    const-string v0, "prot"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void

    .line 174
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setProtocol(), the protocol parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setSPIClient(I)V
    .registers 4
    .param p1, "spic"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 199
    if-ltz p1, :cond_8

    .line 203
    const-string v0, "spi-c"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    .line 204
    return-void

    .line 200
    :cond_8
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setSPIClient(), the spi-c parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setSPIServer(I)V
    .registers 4
    .param p1, "spis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 212
    if-ltz p1, :cond_8

    .line 216
    const-string v0, "spi-s"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    .line 217
    return-void

    .line 213
    :cond_8
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SecurityClient, setSPIServer(), the spi-s parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setSecurityMechanism(Ljava/lang/String;)V
    .registers 4
    .param p1, "secMech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 133
    if-eqz p1, :cond_5

    .line 137
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    .line 138
    return-void

    .line 134
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SecurityAgree, setSecurityMechanism(), the sec-mechanism parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
