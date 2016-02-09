.class public abstract Lgov/nist/javax/sip/header/AuthenticationHeader;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AuthenticationHeader.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final CK:Ljava/lang/String; = "ck"

.field public static final CNONCE:Ljava/lang/String; = "cnonce"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final IK:Ljava/lang/String; = "ik"

.field public static final INTEGRITY_PROTECTED:Ljava/lang/String; = "integrity-protected"

.field public static final NC:Ljava/lang/String; = "nc"

.field public static final NONCE:Ljava/lang/String; = "nonce"

.field public static final OPAQUE:Ljava/lang/String; = "opaque"

.field public static final QOP:Ljava/lang/String; = "qop"

.field public static final REALM:Ljava/lang/String; = "realm"

.field public static final RESPONSE:Ljava/lang/String; = "response"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SIGNED_BY:Ljava/lang/String; = "signed-by"

.field public static final STALE:Ljava/lang/String; = "stale"

.field public static final URI:Ljava/lang/String; = "uri"

.field public static final USERNAME:Ljava/lang/String; = "username"


# instance fields
.field protected scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>()V

    #@3
    .line 94
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->parameters:Lgov/nist/core/NameValueList;

    #@5
    const-string/jumbo v1, ","

    #@8
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@b
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@3
    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->parameters:Lgov/nist/core/NameValueList;

    #@5
    const-string/jumbo v1, ","

    #@8
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@b
    .line 89
    const-string/jumbo v0, "Digest"

    #@e
    iput-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    #@10
    .line 86
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, ","

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@8
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    iget-object v1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, " "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->parameters:Lgov/nist/core/NameValueList;

    #@1c
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    const-string/jumbo v0, "algorithm"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getCK()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 533
    const-string/jumbo v0, "ck"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getCNonce()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 433
    const-string/jumbo v0, "cnonce"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 391
    const-string/jumbo v0, "domain"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getIK()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 521
    const-string/jumbo v0, "ik"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getIntegrityProtected()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 550
    const-string/jumbo v0, "integrity-protected"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 243
    const-string/jumbo v0, "nonce"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getNonceCount()I
    .locals 1

    #@0
    .prologue
    .line 437
    const-string/jumbo v0, "nc"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterAsHexInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 363
    const-string/jumbo v0, "opaque"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 335
    const-string/jumbo v0, "qop"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 213
    const-string/jumbo v0, "realm"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 463
    const-string/jumbo v0, "response"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getURI()Ljavax/sip/address/URI;
    .locals 1

    #@0
    .prologue
    .line 279
    const-string/jumbo v0, "uri"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterAsURI(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 490
    const-string/jumbo v0, "username"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public isStale()Z
    .locals 1

    #@0
    .prologue
    .line 414
    const-string/jumbo v0, "stale"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterAsBoolean(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    if-nez p1, :cond_0

    #@2
    .line 295
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null arg"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 296
    :cond_0
    const-string/jumbo v0, "algorithm"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 293
    return-void
.end method

.method public setCK(Ljava/lang/String;)V
    .locals 2
    .param p1, "ck"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 525
    if-nez p1, :cond_0

    #@2
    .line 526
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 527
    const-string/jumbo v1, "JAIN-SIP Exception,  AuthenticationHeader, setCk(), The auth-param CK parameter is null"

    #@7
    .line 526
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 529
    :cond_0
    const-string/jumbo v0, "ck"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 524
    return-void
.end method

.method public setCNonce(Ljava/lang/String;)V
    .locals 1
    .param p1, "cnonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    const-string/jumbo v0, "cnonce"

    #@3
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 423
    return-void
.end method

.method public setChallenge(Lgov/nist/javax/sip/header/Challenge;)V
    .locals 1
    .param p1, "challenge"    # Lgov/nist/javax/sip/header/Challenge;

    #@0
    .prologue
    .line 147
    iget-object v0, p1, Lgov/nist/javax/sip/header/Challenge;->scheme:Ljava/lang/String;

    #@2
    iput-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    #@4
    .line 148
    iget-object v0, p1, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@6
    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@8
    .line 146
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 378
    if-nez p1, :cond_0

    #@2
    .line 379
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null arg"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 380
    :cond_0
    const-string/jumbo v0, "domain"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 377
    return-void
.end method

.method public setIK(Ljava/lang/String;)V
    .locals 2
    .param p1, "ik"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 513
    if-nez p1, :cond_0

    #@2
    .line 514
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 515
    const-string/jumbo v1, "JAIN-SIP Exception,  AuthenticationHeader, setIk(), The auth-param IK parameter is null"

    #@7
    .line 514
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 517
    :cond_0
    const-string/jumbo v0, "ik"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 512
    return-void
.end method

.method public setIntegrityProtected(Ljava/lang/String;)V
    .locals 2
    .param p1, "integrityProtected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 539
    if-nez p1, :cond_0

    #@2
    .line 540
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 541
    const-string/jumbo v1, "JAIN-SIP Exception,  AuthenticationHeader, setIntegrityProtected(), The integrity-protected parameter is null"

    #@7
    .line 540
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 544
    :cond_0
    const-string/jumbo v0, "integrity-protected"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 537
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    if-nez p1, :cond_0

    #@2
    .line 229
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 230
    const-string/jumbo v1, "JAIN-SIP Exception,  AuthenticationHeader, setNonce(), The nonce parameter is null"

    #@7
    .line 229
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 232
    :cond_0
    const-string/jumbo v0, "nonce"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 227
    return-void
.end method

.method public setNonceCount(I)V
    .locals 5
    .param p1, "param"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 446
    if-gez p1, :cond_0

    #@3
    .line 447
    new-instance v2, Ljava/text/ParseException;

    #@5
    const-string/jumbo v3, "bad value"

    #@8
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@b
    throw v2

    #@c
    .line 449
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 451
    .local v1, "nc":Ljava/lang/String;
    const-string/jumbo v0, "00000000"

    #@13
    .line 452
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
    .line 453
    const-string/jumbo v2, "nc"

    #@31
    invoke-virtual {p0, v2, v1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 445
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 2
    .param p1, "opaque"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    if-nez p1, :cond_0

    #@2
    .line 351
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null arg"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 352
    :cond_0
    const-string/jumbo v0, "opaque"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 349
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
    .line 106
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@9
    move-result-object v0

    #@a
    .line 107
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-nez v0, :cond_5

    #@c
    .line 108
    new-instance v0, Lgov/nist/core/NameValue;

    #@e
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@11
    .line 109
    .restart local v0    # "nv":Lgov/nist/core/NameValue;
    const-string/jumbo v1, "qop"

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 110
    const-string/jumbo v1, "realm"

    #@1d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@20
    move-result v1

    #@21
    .line 109
    if-nez v1, :cond_0

    #@23
    .line 111
    const-string/jumbo v1, "cnonce"

    #@26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@29
    move-result v1

    #@2a
    .line 109
    if-nez v1, :cond_0

    #@2c
    .line 112
    const-string/jumbo v1, "nonce"

    #@2f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v1

    #@33
    .line 109
    if-nez v1, :cond_0

    #@35
    .line 113
    const-string/jumbo v1, "username"

    #@38
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v1

    #@3c
    .line 109
    if-nez v1, :cond_0

    #@3e
    .line 114
    const-string/jumbo v1, "domain"

    #@41
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44
    move-result v1

    #@45
    .line 109
    if-nez v1, :cond_0

    #@47
    .line 115
    const-string/jumbo v1, "opaque"

    #@4a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4d
    move-result v1

    #@4e
    .line 109
    if-nez v1, :cond_0

    #@50
    .line 116
    const-string/jumbo v1, "nextnonce"

    #@53
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@56
    move-result v1

    #@57
    .line 109
    if-nez v1, :cond_0

    #@59
    .line 117
    const-string/jumbo v1, "uri"

    #@5c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5f
    move-result v1

    #@60
    .line 109
    if-nez v1, :cond_0

    #@62
    .line 118
    const-string/jumbo v1, "response"

    #@65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@68
    move-result v1

    #@69
    .line 109
    if-nez v1, :cond_0

    #@6b
    .line 119
    const-string/jumbo v1, "ik"

    #@6e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@71
    move-result v1

    #@72
    .line 109
    if-nez v1, :cond_0

    #@74
    .line 120
    const-string/jumbo v1, "ck"

    #@77
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7a
    move-result v1

    #@7b
    .line 109
    if-nez v1, :cond_0

    #@7d
    .line 121
    const-string/jumbo v1, "integrity-protected"

    #@80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@83
    move-result v1

    #@84
    .line 109
    if-eqz v1, :cond_4

    #@86
    .line 122
    :cond_0
    instance-of v1, p0, Lgov/nist/javax/sip/header/Authorization;

    #@88
    if-nez v1, :cond_1

    #@8a
    instance-of v1, p0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    #@8c
    if-eqz v1, :cond_2

    #@8e
    .line 123
    :cond_1
    const-string/jumbo v1, "qop"

    #@91
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@94
    move-result v1

    #@95
    .line 122
    if-eqz v1, :cond_2

    #@97
    .line 128
    :goto_0
    if-nez p2, :cond_3

    #@99
    .line 129
    new-instance v1, Ljava/lang/NullPointerException;

    #@9b
    const-string/jumbo v2, "null value"

    #@9e
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v1

    #@a2
    .line 126
    :cond_2
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    #@a5
    goto :goto_0

    #@a6
    .line 130
    :cond_3
    const-string/jumbo v1, "\""

    #@a9
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ac
    move-result v1

    #@ad
    if-eqz v1, :cond_4

    #@af
    .line 131
    new-instance v1, Ljava/text/ParseException;

    #@b1
    new-instance v2, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    .line 132
    const-string/jumbo v3, " : Unexpected DOUBLE_QUOTE"

    #@bd
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v2

    #@c5
    .line 132
    const/4 v3, 0x0

    #@c6
    .line 131
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@c9
    throw v1

    #@ca
    .line 134
    :cond_4
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    #@cd
    .line 105
    :goto_1
    return-void

    #@ce
    .line 136
    :cond_5
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@d1
    goto :goto_1
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 2
    .param p1, "qop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    if-nez p1, :cond_0

    #@2
    .line 323
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null arg"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 324
    :cond_0
    const-string/jumbo v0, "qop"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 321
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    if-nez p1, :cond_0

    #@2
    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 199
    const-string/jumbo v1, "JAIN-SIP Exception,  AuthenticationHeader, setRealm(), The realm parameter is null"

    #@7
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 201
    :cond_0
    const-string/jumbo v0, "realm"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 196
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    if-nez p1, :cond_0

    #@2
    .line 474
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Null parameter"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 476
    :cond_0
    const-string/jumbo v0, "response"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 472
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    iput-object p1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    #@2
    .line 169
    return-void
.end method

.method public setStale(Z)V
    .locals 3
    .param p1, "stale"    # Z

    #@0
    .prologue
    .line 403
    new-instance v0, Lgov/nist/core/NameValue;

    #@2
    const-string/jumbo v1, "stale"

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Lgov/nist/core/NameValue;)V

    #@f
    .line 402
    return-void
.end method

.method public setURI(Ljavax/sip/address/URI;)V
    .locals 3
    .param p1, "uri"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 258
    if-eqz p1, :cond_0

    #@2
    .line 259
    new-instance v0, Lgov/nist/core/NameValue;

    #@4
    const-string/jumbo v1, "uri"

    #@7
    invoke-direct {v0, v1, p1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@a
    .line 260
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    #@d
    .line 261
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    #@f
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@12
    .line 257
    return-void

    #@13
    .line 263
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v2, "Null URI"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 509
    const-string/jumbo v0, "username"

    #@3
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 508
    return-void
.end method
