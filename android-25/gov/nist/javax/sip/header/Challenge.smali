.class public Lgov/nist/javax/sip/header/Challenge;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "Challenge.java"


# static fields
.field private static ALGORITHM:Ljava/lang/String; = null

.field private static DOMAIN:Ljava/lang/String; = null

.field private static OPAQUE:Ljava/lang/String; = null

.field private static QOP:Ljava/lang/String; = null

.field private static REALM:Ljava/lang/String; = null

.field private static RESPONSE:Ljava/lang/String; = null

.field private static SIGNATURE:Ljava/lang/String; = null

.field private static SIGNED_BY:Ljava/lang/String; = null

.field private static STALE:Ljava/lang/String; = null

.field private static URI:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x151e737cde1170L


# instance fields
.field protected authParams:Lgov/nist/core/NameValueList;

.field protected scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "domain"

    #@3
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->DOMAIN:Ljava/lang/String;

    #@5
    .line 49
    const-string/jumbo v0, "realm"

    #@8
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->REALM:Ljava/lang/String;

    #@a
    .line 50
    const-string/jumbo v0, "opaque"

    #@d
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->OPAQUE:Ljava/lang/String;

    #@f
    .line 51
    const-string/jumbo v0, "algorithm"

    #@12
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->ALGORITHM:Ljava/lang/String;

    #@14
    .line 52
    const-string/jumbo v0, "qop"

    #@17
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->QOP:Ljava/lang/String;

    #@19
    .line 53
    const-string/jumbo v0, "stale"

    #@1c
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->STALE:Ljava/lang/String;

    #@1e
    .line 54
    const-string/jumbo v0, "signature"

    #@21
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->SIGNATURE:Ljava/lang/String;

    #@23
    .line 55
    const-string/jumbo v0, "response"

    #@26
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->RESPONSE:Ljava/lang/String;

    #@28
    .line 56
    const-string/jumbo v0, "signed-by"

    #@2b
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->SIGNED_BY:Ljava/lang/String;

    #@2d
    .line 57
    const-string/jumbo v0, "uri"

    #@30
    sput-object v0, Lgov/nist/javax/sip/header/Challenge;->URI:Ljava/lang/String;

    #@32
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    #@3
    .line 73
    new-instance v0, Lgov/nist/core/NameValueList;

    #@5
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@a
    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@c
    const-string/jumbo v1, ","

    #@f
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@12
    .line 72
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 252
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/Challenge;

    #@6
    .line 253
    .local v0, "retval":Lgov/nist/javax/sip/header/Challenge;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 254
    iget-object v1, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@c
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/core/NameValueList;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@14
    .line 255
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    iget-object v1, p0, Lgov/nist/javax/sip/header/Challenge;->scheme:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@7
    .line 83
    const-string/jumbo v1, " "

    #@a
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    move-result-object v0

    #@e
    .line 84
    iget-object v1, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@10
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->ALGORITHM:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getAuthParams()Lgov/nist/core/NameValueList;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->DOMAIN:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->OPAQUE:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getQOP()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->QOP:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->REALM:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->RESPONSE:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->SIGNATURE:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getSignedBy()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->SIGNED_BY:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getStale()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->STALE:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    sget-object v1, Lgov/nist/javax/sip/header/Challenge;->URI:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasParameters()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 207
    iget-object v1, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@3
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->size()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeParameters()V
    .locals 1

    #@0
    .prologue
    .line 224
    new-instance v0, Lgov/nist/core/NameValueList;

    #@2
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@5
    iput-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@7
    .line 223
    return-void
.end method

.method public setAuthParams(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "a"    # Lgov/nist/core/NameValueList;

    #@0
    .prologue
    .line 248
    iput-object p1, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    .line 247
    return-void
.end method

.method public setParameter(Lgov/nist/core/NameValue;)V
    .locals 1
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lgov/nist/javax/sip/header/Challenge;->authParams:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@5
    .line 231
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 240
    iput-object p1, p0, Lgov/nist/javax/sip/header/Challenge;->scheme:Ljava/lang/String;

    #@2
    .line 239
    return-void
.end method
