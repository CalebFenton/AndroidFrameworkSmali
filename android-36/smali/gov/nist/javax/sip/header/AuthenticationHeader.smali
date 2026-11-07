.class public abstract Lgov/nist/javax/sip/header/AuthenticationHeader;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AuthenticationHeader.java"


# static fields
.field public static final greylist ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final greylist CK:Ljava/lang/String; = "ck"

.field public static final greylist CNONCE:Ljava/lang/String; = "cnonce"

.field public static final greylist DOMAIN:Ljava/lang/String; = "domain"

.field public static final greylist IK:Ljava/lang/String; = "ik"

.field public static final greylist INTEGRITY_PROTECTED:Ljava/lang/String; = "integrity-protected"

.field public static final greylist NC:Ljava/lang/String; = "nc"

.field public static final greylist NONCE:Ljava/lang/String; = "nonce"

.field public static final greylist OPAQUE:Ljava/lang/String; = "opaque"

.field public static final greylist QOP:Ljava/lang/String; = "qop"

.field public static final greylist REALM:Ljava/lang/String; = "realm"

.field public static final greylist RESPONSE:Ljava/lang/String; = "response"

.field public static final greylist SIGNATURE:Ljava/lang/String; = "signature"

.field public static final greylist SIGNED_BY:Ljava/lang/String; = "signed-by"

.field public static final greylist STALE:Ljava/lang/String; = "stale"

.field public static final greylist URI:Ljava/lang/String; = "uri"

.field public static final greylist USERNAME:Ljava/lang/String; = "username"


# instance fields
.field protected greylist scheme:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 93
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>()V

    .line 94
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 89
    const-string v0, "Digest"

    iput-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 3

    .line 157
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 307
    const-string v0, "algorithm"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCK()Ljava/lang/String;
    .registers 2

    .line 533
    const-string v0, "ck"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCNonce()Ljava/lang/String;
    .registers 2

    .line 433
    const-string v0, "cnonce"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDomain()Ljava/lang/String;
    .registers 2

    .line 391
    const-string v0, "domain"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getIK()Ljava/lang/String;
    .registers 2

    .line 521
    const-string v0, "ik"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getIntegrityProtected()Ljava/lang/String;
    .registers 2

    .line 550
    const-string v0, "integrity-protected"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNonce()Ljava/lang/String;
    .registers 2

    .line 243
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNonceCount()I
    .registers 2

    .line 437
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterAsHexInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getOpaque()Ljava/lang/String;
    .registers 2

    .line 363
    const-string v0, "opaque"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getQop()Ljava/lang/String;
    .registers 2

    .line 335
    const-string v0, "qop"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getRealm()Ljava/lang/String;
    .registers 2

    .line 213
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getResponse()Ljava/lang/String;
    .registers 2

    .line 463
    const-string v0, "response"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getURI()Ljavax/sip/address/URI;
    .registers 2

    .line 279
    const-string v0, "uri"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterAsURI(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUsername()Ljava/lang/String;
    .registers 2

    .line 490
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist isStale()Z
    .registers 2

    .line 414
    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->getParameterAsBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist setAlgorithm(Ljava/lang/String;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 294
    if-eqz p1, :cond_8

    .line 296
    const-string v0, "algorithm"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void

    .line 295
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setCK(Ljava/lang/String;)V
    .registers 4
    .param p1, "ck"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 525
    if-eqz p1, :cond_8

    .line 529
    const-string v0, "ck"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void

    .line 526
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setCk(), The auth-param CK parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setCNonce(Ljava/lang/String;)V
    .registers 3
    .param p1, "cnonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 424
    const-string v0, "cnonce"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public greylist setChallenge(Lgov/nist/javax/sip/header/Challenge;)V
    .registers 3
    .param p1, "challenge"    # Lgov/nist/javax/sip/header/Challenge;

    .line 147
    iget-object v0, p1, Lgov/nist/javax/sip/header/Challenge;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    .line 148
    iget-object v0, p1, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 149
    return-void
.end method

.method public greylist setDomain(Ljava/lang/String;)V
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 378
    if-eqz p1, :cond_8

    .line 380
    const-string v0, "domain"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void

    .line 379
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setIK(Ljava/lang/String;)V
    .registers 4
    .param p1, "ik"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 513
    if-eqz p1, :cond_8

    .line 517
    const-string v0, "ik"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void

    .line 514
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setIk(), The auth-param IK parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setIntegrityProtected(Ljava/lang/String;)V
    .registers 4
    .param p1, "integrityProtected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 539
    if-eqz p1, :cond_8

    .line 544
    const-string v0, "integrity-protected"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-void

    .line 540
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setIntegrityProtected(), The integrity-protected parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setNonce(Ljava/lang/String;)V
    .registers 4
    .param p1, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 228
    if-eqz p1, :cond_8

    .line 232
    const-string v0, "nonce"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 229
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setNonce(), The nonce parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setNonceCount(I)V
    .registers 7
    .param p1, "param"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    if-ltz p1, :cond_2a

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "nc":Ljava/lang/String;
    const-string v2, "00000000"

    .line 452
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

    .line 453
    .end local v1    # "nc":Ljava/lang/String;
    .local v0, "nc":Ljava/lang/String;
    const-string v1, "nc"

    invoke-virtual {p0, v1, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void

    .line 447
    .end local v0    # "nc":Ljava/lang/String;
    .end local v2    # "base":Ljava/lang/String;
    :cond_2a
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "bad value"

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public greylist setOpaque(Ljava/lang/String;)V
    .registers 4
    .param p1, "opaque"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 350
    if-eqz p1, :cond_8

    .line 352
    const-string v0, "opaque"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void

    .line 351
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

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

    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 107
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-nez v0, :cond_bc

    .line 108
    new-instance v1, Lgov/nist/core/NameValue;

    invoke-direct {v1, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 109
    const-string v1, "qop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 110
    const-string v2, "realm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 111
    const-string v2, "cnonce"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 112
    const-string v2, "nonce"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 113
    const-string v2, "username"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 114
    const-string v2, "domain"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 115
    const-string v2, "opaque"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 116
    const-string v2, "nextnonce"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 117
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 118
    const-string v2, "response"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 119
    const-string v2, "ik"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 120
    const-string v2, "ck"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 121
    const-string v2, "integrity-protected"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 122
    :cond_7a
    instance-of v2, p0, Lgov/nist/javax/sip/header/Authorization;

    if-nez v2, :cond_82

    instance-of v2, p0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    if-eqz v2, :cond_89

    .line 123
    :cond_82
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    goto :goto_8c

    .line 126
    :cond_89
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 128
    :goto_8c
    if-eqz p2, :cond_b4

    .line 130
    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 134
    :cond_96
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    goto :goto_bf

    .line 131
    :cond_9a
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

    .line 129
    :cond_b4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_bc
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 138
    :goto_bf
    return-void
.end method

.method public greylist setQop(Ljava/lang/String;)V
    .registers 4
    .param p1, "qop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 322
    if-eqz p1, :cond_8

    .line 324
    const-string v0, "qop"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void

    .line 323
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setRealm(Ljava/lang/String;)V
    .registers 4
    .param p1, "realm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 197
    if-eqz p1, :cond_8

    .line 201
    const-string v0, "realm"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 198
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  AuthenticationHeader, setRealm(), The realm parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 473
    if-eqz p1, :cond_8

    .line 476
    const-string v0, "response"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void

    .line 474
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public greylist setStale(Z)V
    .registers 5
    .param p1, "stale"    # Z

    .line 403
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "stale"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 404
    return-void
.end method

.method public greylist setURI(Ljavax/sip/address/URI;)V
    .registers 4
    .param p1, "uri"    # Ljavax/sip/address/URI;

    .line 258
    if-eqz p1, :cond_13

    .line 259
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "uri"

    invoke-direct {v0, v1, p1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 261
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 262
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    nop

    .line 265
    return-void

    .line 263
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null URI"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setUsername(Ljava/lang/String;)V
    .registers 3
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 509
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-void
.end method
