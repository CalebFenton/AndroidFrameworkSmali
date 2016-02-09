.class public abstract Lgov/nist/javax/sip/header/ims/SecurityAgree;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SecurityAgree.java"


# instance fields
.field private secMechanism:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>()V

    #@3
    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->parameters:Lgov/nist/core/NameValueList;

    #@5
    const-string/jumbo v1, ";"

    #@8
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@b
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@3
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->parameters:Lgov/nist/core/NameValueList;

    #@5
    const-string/jumbo v1, ";"

    #@8
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@b
    .line 75
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 360
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ims/SecurityAgree;

    #@6
    .line 361
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 362
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    #@c
    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    #@e
    .line 363
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ";"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->parameters:Lgov/nist/core/NameValueList;

    #@1b
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 348
    instance-of v2, p1, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 350
    check-cast v0, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;

    #@8
    .line 351
    .local v0, "o":Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getSecurityMechanism()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;->getSecurityMechanism()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 352
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->equalParameters(Ljavax/sip/header/Parameters;)Z

    #@19
    move-result v1

    #@1a
    .line 351
    :cond_0
    return v1

    #@1b
    .line 354
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;
    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 285
    const-string/jumbo v0, "alg"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 277
    const-string/jumbo v0, "ealg"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 301
    const-string/jumbo v0, "mod"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getPortClient()I
    .locals 1

    #@0
    .prologue
    .line 325
    const-string/jumbo v0, "port-c"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getPortServer()I
    .locals 1

    #@0
    .prologue
    .line 333
    const-string/jumbo v0, "port-s"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getPreference()F
    .locals 1

    #@0
    .prologue
    .line 341
    const-string/jumbo v0, "q"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 293
    const-string/jumbo v0, "prot"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getSPIClient()I
    .locals 1

    #@0
    .prologue
    .line 309
    const-string/jumbo v0, "spi-c"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getSPIServer()I
    .locals 1

    #@0
    .prologue
    .line 317
    const-string/jumbo v0, "spi-s"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getSecurityMechanism()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 2
    .param p1, "alg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    if-nez p1, :cond_0

    #@2
    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 162
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityClient, setAlgorithm(), the algorithm parameter is null"

    #@7
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 164
    :cond_0
    const-string/jumbo v0, "alg"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 159
    return-void
.end method

.method public setEncryptionAlgorithm(Ljava/lang/String;)V
    .locals 2
    .param p1, "ealg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    if-nez p1, :cond_0

    #@2
    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 148
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityClient, setEncryptionAlgorithm(), the encryption-algorithm parameter is null"

    #@7
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 151
    :cond_0
    const-string/jumbo v0, "ealg"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 145
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    if-nez p1, :cond_0

    #@2
    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 188
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityClient, setMode(), the mode parameter is null"

    #@7
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 190
    :cond_0
    const-string/jumbo v0, "mod"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 185
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
    .line 93
    if-nez p2, :cond_0

    #@2
    .line 94
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null value"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 96
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
    .line 97
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-nez v0, :cond_2

    #@17
    .line 99
    new-instance v0, Lgov/nist/core/NameValue;

    #@19
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@1c
    .line 102
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    const-string/jumbo v1, "d-ver"

    #@1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 104
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    #@28
    .line 106
    const-string/jumbo v1, "\""

    #@2b
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 107
    new-instance v1, Ljava/text/ParseException;

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 108
    const-string/jumbo v3, " : Unexpected DOUBLE_QUOTE"

    #@3f
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 108
    const/4 v3, 0x0

    #@48
    .line 107
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@4b
    throw v1

    #@4c
    .line 111
    :cond_1
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    #@4f
    .line 91
    :goto_0
    return-void

    #@50
    .line 115
    :cond_2
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@53
    goto :goto_0
.end method

.method public setPortClient(I)V
    .locals 2
    .param p1, "portC"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    if-gez p1, :cond_0

    #@2
    .line 226
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 227
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityClient, setPortClient(), the port-c parameter is <0"

    #@7
    .line 226
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 229
    :cond_0
    const-string/jumbo v0, "port-c"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    #@11
    .line 224
    return-void
.end method

.method public setPortServer(I)V
    .locals 2
    .param p1, "portS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    if-gez p1, :cond_0

    #@2
    .line 239
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 240
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityClient, setPortServer(), the port-s parameter is <0"

    #@7
    .line 239
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 242
    :cond_0
    const-string/jumbo v0, "port-s"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    #@11
    .line 237
    return-void
.end method

.method public setPreference(F)V
    .locals 2
    .param p1, "q"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-gez v0, :cond_0

    #@5
    .line 255
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@7
    .line 256
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityClient, setPreference(), the preference (q) parameter is <0"

    #@a
    .line 255
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 258
    :cond_0
    const-string/jumbo v0, "q"

    #@11
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;F)V

    #@14
    .line 253
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "prot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    if-nez p1, :cond_0

    #@2
    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 175
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityClient, setProtocol(), the protocol parameter is null"

    #@7
    .line 174
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 177
    :cond_0
    const-string/jumbo v0, "prot"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 172
    return-void
.end method

.method public setSPIClient(I)V
    .locals 2
    .param p1, "spic"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    if-gez p1, :cond_0

    #@2
    .line 200
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 201
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityClient, setSPIClient(), the spi-c parameter is <0"

    #@7
    .line 200
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 203
    :cond_0
    const-string/jumbo v0, "spi-c"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    #@11
    .line 198
    return-void
.end method

.method public setSPIServer(I)V
    .locals 2
    .param p1, "spis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    if-gez p1, :cond_0

    #@2
    .line 213
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 214
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityClient, setSPIServer(), the spi-s parameter is <0"

    #@7
    .line 213
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 216
    :cond_0
    const-string/jumbo v0, "spi-s"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Ljava/lang/String;I)V

    #@11
    .line 211
    return-void
.end method

.method public setSecurityMechanism(Ljava/lang/String;)V
    .locals 2
    .param p1, "secMech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    if-nez p1, :cond_0

    #@2
    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 135
    const-string/jumbo v1, "JAIN-SIP Exception, SecurityAgree, setSecurityMechanism(), the sec-mechanism parameter is null"

    #@7
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 137
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    #@d
    .line 132
    return-void
.end method
