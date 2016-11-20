.class public Lgov/nist/javax/sip/header/Credentials;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "Credentials.java"


# static fields
.field private static CNONCE:Ljava/lang/String; = null

.field private static DOMAIN:Ljava/lang/String; = null

.field private static NONCE:Ljava/lang/String; = null

.field private static OPAQUE:Ljava/lang/String; = null

.field private static REALM:Ljava/lang/String; = null

.field private static RESPONSE:Ljava/lang/String; = null

.field private static URI:Ljava/lang/String; = null

.field private static USERNAME:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x57ec8c1393353a04L


# instance fields
.field protected parameters:Lgov/nist/core/NameValueList;

.field protected scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "domain"

    #@3
    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->DOMAIN:Ljava/lang/String;

    #@5
    .line 46
    const-string/jumbo v0, "realm"

    #@8
    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->REALM:Ljava/lang/String;

    #@a
    .line 47
    const-string/jumbo v0, "opaque"

    #@d
    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->OPAQUE:Ljava/lang/String;

    #@f
    .line 48
    const-string/jumbo v0, "response"

    #@12
    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->RESPONSE:Ljava/lang/String;

    #@14
    .line 49
    const-string/jumbo v0, "uri"

    #@17
    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->URI:Ljava/lang/String;

    #@19
    .line 50
    const-string/jumbo v0, "nonce"

    #@1c
    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->NONCE:Ljava/lang/String;

    #@1e
    .line 51
    const-string/jumbo v0, "cnonce"

    #@21
    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->CNONCE:Ljava/lang/String;

    #@23
    .line 52
    const-string/jumbo v0, "username"

    #@26
    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->USERNAME:Ljava/lang/String;

    #@28
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    #@3
    .line 65
    new-instance v0, Lgov/nist/core/NameValueList;

    #@5
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    #@a
    .line 66
    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    #@c
    const-string/jumbo v1, ","

    #@f
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@12
    .line 64
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 130
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/Credentials;

    #@6
    .line 131
    .local v0, "retval":Lgov/nist/javax/sip/header/Credentials;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 132
    iget-object v1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    #@c
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/core/NameValueList;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    #@14
    .line 133
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->scheme:Ljava/lang/String;

    #@2
    .line 103
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    #@4
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget-object v2, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    #@1c
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 106
    :cond_0
    return-object v0
.end method

.method public getCredentials()Lgov/nist/core/NameValueList;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    #@2
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setCredentials(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "c"    # Lgov/nist/core/NameValueList;

    #@0
    .prologue
    .line 98
    iput-object p1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    #@2
    .line 97
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    iput-object p1, p0, Lgov/nist/javax/sip/header/Credentials;->scheme:Ljava/lang/String;

    #@2
    .line 89
    return-void
.end method
