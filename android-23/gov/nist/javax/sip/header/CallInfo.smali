.class public final Lgov/nist/javax/sip/header/CallInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "CallInfo.java"

# interfaces
.implements Ljavax/sip/header/CallInfoHeader;


# static fields
.field private static final serialVersionUID:J = -0x718285585586c120L


# instance fields
.field protected info:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "Call-Info"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 118
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/CallInfo;

    #@6
    .line 119
    .local v0, "retval":Lgov/nist/javax/sip/header/CallInfo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 120
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    #@14
    .line 121
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallInfo;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "<"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6
    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    #@8
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@b
    .line 70
    const-string/jumbo v0, ">"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 72
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->parameters:Lgov/nist/core/NameValueList;

    #@13
    if-eqz v0, :cond_0

    #@15
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->parameters:Lgov/nist/core/NameValueList;

    #@17
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 77
    :cond_0
    :goto_0
    return-object p1

    #@1e
    .line 73
    :cond_1
    const-string/jumbo v0, ";"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->parameters:Lgov/nist/core/NameValueList;

    #@26
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@29
    goto :goto_0
.end method

.method public getInfo()Ljavax/sip/address/URI;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    return-object v0
.end method

.method public getPurpose()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, "purpose"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setInfo(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "info"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 114
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    #@2
    .end local p1    # "info":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    #@4
    .line 113
    return-void
.end method

.method public setPurpose(Ljava/lang/String;)V
    .locals 3
    .param p1, "purpose"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    if-nez p1, :cond_0

    #@2
    .line 102
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 104
    :cond_0
    :try_start_0
    const-string/jumbo v1, "purpose"

    #@e
    invoke-virtual {p0, v1, p1}, Lgov/nist/javax/sip/header/CallInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 100
    :goto_0
    return-void

    #@12
    .line 105
    :catch_0
    move-exception v0

    #@13
    .local v0, "ex":Ljava/text/ParseException;
    goto :goto_0
.end method
