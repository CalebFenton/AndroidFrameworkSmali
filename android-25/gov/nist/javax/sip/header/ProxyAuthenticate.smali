.class public Lgov/nist/javax/sip/header/ProxyAuthenticate;
.super Lgov/nist/javax/sip/header/AuthenticationHeader;
.source "ProxyAuthenticate.java"

# interfaces
.implements Ljavax/sip/header/ProxyAuthenticateHeader;


# static fields
.field private static final serialVersionUID:J = 0x35193379862f44acL


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 57
    const-string/jumbo v0, "Proxy-Authenticate"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 56
    return-void
.end method


# virtual methods
.method public getURI()Ljavax/sip/address/URI;
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setURI(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "uri"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 76
    return-void
.end method
