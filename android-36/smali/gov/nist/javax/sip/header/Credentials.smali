.class public Lgov/nist/javax/sip/header/Credentials;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "Credentials.java"


# static fields
.field private static greylist CNONCE:Ljava/lang/String; = null

.field private static greylist DOMAIN:Ljava/lang/String; = null

.field private static greylist NONCE:Ljava/lang/String; = null

.field private static greylist OPAQUE:Ljava/lang/String; = null

.field private static greylist REALM:Ljava/lang/String; = null

.field private static greylist RESPONSE:Ljava/lang/String; = null

.field private static greylist URI:Ljava/lang/String; = null

.field private static greylist USERNAME:Ljava/lang/String; = null

.field private static final whitelist serialVersionUID:J = -0x57ec8c1393353a04L


# instance fields
.field protected greylist parameters:Lgov/nist/core/NameValueList;

.field protected greylist scheme:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 45
    const-string v0, "domain"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->DOMAIN:Ljava/lang/String;

    .line 46
    const-string v0, "realm"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->REALM:Ljava/lang/String;

    .line 47
    const-string v0, "opaque"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->OPAQUE:Ljava/lang/String;

    .line 48
    const-string v0, "response"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->RESPONSE:Ljava/lang/String;

    .line 49
    const-string v0, "uri"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->URI:Ljava/lang/String;

    .line 50
    const-string v0, "nonce"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->NONCE:Ljava/lang/String;

    .line 51
    const-string v0, "cnonce"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->CNONCE:Ljava/lang/String;

    .line 52
    const-string v0, "username"

    sput-object v0, Lgov/nist/javax/sip/header/Credentials;->USERNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 65
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    .line 66
    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 130
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Credentials;

    .line 131
    .local v0, "retval":Lgov/nist/javax/sip/header/Credentials;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_14

    .line 132
    iget-object v1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    .line 133
    :cond_14
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 4

    .line 102
    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->scheme:Ljava/lang/String;

    .line 103
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_27
    return-object v0
.end method

.method public greylist getCredentials()Lgov/nist/core/NameValueList;
    .registers 2

    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/header/Credentials;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setCredentials(Lgov/nist/core/NameValueList;)V
    .registers 2
    .param p1, "c"    # Lgov/nist/core/NameValueList;

    .line 98
    iput-object p1, p0, Lgov/nist/javax/sip/header/Credentials;->parameters:Lgov/nist/core/NameValueList;

    .line 99
    return-void
.end method

.method public greylist setScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lgov/nist/javax/sip/header/Credentials;->scheme:Ljava/lang/String;

    .line 91
    return-void
.end method
