.class public final Lgov/nist/javax/sip/header/AlertInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AlertInfo.java"

# interfaces
.implements Ljavax/sip/header/AlertInfoHeader;


# static fields
.field private static final serialVersionUID:J = 0x39ba1254fc6b29efL


# instance fields
.field protected string:Ljava/lang/String;

.field protected uri:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 63
    const-string/jumbo v0, "Alert-Info"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 62
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 120
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/AlertInfo;

    #@6
    .line 121
    .local v0, "retval":Lgov/nist/javax/sip/header/AlertInfo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 122
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@14
    .line 126
    :cond_0
    :goto_0
    return-object v0

    #@15
    .line 123
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 124
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    #@1b
    iput-object v1, v0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    #@1d
    goto :goto_0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 72
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 73
    const-string/jumbo v1, "<"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@12
    invoke-virtual {v2}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, ">"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    .line 77
    :cond_0
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->parameters:Lgov/nist/core/NameValueList;

    #@22
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_1

    #@28
    .line 78
    const-string/jumbo v1, ";"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Lgov/nist/javax/sip/header/AlertInfo;->parameters:Lgov/nist/core/NameValueList;

    #@31
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 74
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    #@3f
    if-eqz v1, :cond_0

    #@41
    .line 75
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    goto :goto_0
.end method

.method public getAlertInfo()Ljavax/sip/address/URI;
    .locals 4

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    .line 106
    .local v0, "alertInfoUri":Ljavax/sip/address/URI;
    iget-object v3, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 107
    iget-object v0, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@7
    .line 116
    .end local v0    # "alertInfoUri":Ljavax/sip/address/URI;
    :goto_0
    return-object v0

    #@8
    .line 110
    .restart local v0    # "alertInfoUri":Ljavax/sip/address/URI;
    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/address/GenericURI;

    #@a
    iget-object v3, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    #@c
    invoke-direct {v1, v3}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .local v1, "alertInfoUri":Ljavax/sip/address/URI;
    move-object v0, v1

    #@10
    .end local v1    # "alertInfoUri":Ljavax/sip/address/URI;
    .local v0, "alertInfoUri":Ljavax/sip/address/URI;
    goto :goto_0

    #@11
    .line 111
    .local v0, "alertInfoUri":Ljavax/sip/address/URI;
    :catch_0
    move-exception v2

    #@12
    .local v2, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    #@2
    .line 95
    return-void
.end method

.method public setAlertInfo(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "uri"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 88
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    #@2
    .end local p1    # "uri":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    #@4
    .line 87
    return-void
.end method
