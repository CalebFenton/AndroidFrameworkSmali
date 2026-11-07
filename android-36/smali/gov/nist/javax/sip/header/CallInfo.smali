.class public final Lgov/nist/javax/sip/header/CallInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "CallInfo.java"

# interfaces
.implements Ljavax/sip/header/CallInfoHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x718285585586c120L


# instance fields
.field protected greylist info:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 56
    const-string v0, "Call-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 118
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallInfo;

    .line 119
    .local v0, "retval":Lgov/nist/javax/sip/header/CallInfo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_14

    .line 120
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    .line 121
    :cond_14
    return-object v0
.end method

.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallInfo;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 68
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 70
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 73
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 77
    :cond_25
    return-object p1
.end method

.method public greylist getInfo()Ljavax/sip/address/URI;
    .registers 2

    .line 93
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public greylist getPurpose()Ljava/lang/String;
    .registers 2

    .line 85
    const-string v0, "purpose"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist setInfo(Ljavax/sip/address/URI;)V
    .registers 3
    .param p1, "info"    # Ljavax/sip/address/URI;

    .line 114
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    .line 115
    return-void
.end method

.method public greylist setPurpose(Ljava/lang/String;)V
    .registers 4
    .param p1, "purpose"    # Ljava/lang/String;

    .line 101
    if-eqz p1, :cond_a

    .line 104
    :try_start_2
    const-string v0, "purpose"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/CallInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_7} :catch_8

    .line 106
    goto :goto_9

    .line 105
    :catch_8
    move-exception v0

    .line 107
    :goto_9
    return-void

    .line 102
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
