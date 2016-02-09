.class public final Lgov/nist/javax/sip/header/ErrorInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ErrorInfo.java"

# interfaces
.implements Ljavax/sip/header/ErrorInfoHeader;


# static fields
.field private static final serialVersionUID:J = -0x58179228634e738aL


# instance fields
.field protected errorInfo:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "Error-Info"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 60
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/GenericURI;)V
    .locals 0
    .param p1, "errorInfo"    # Lgov/nist/javax/sip/address/GenericURI;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    #@5
    .line 68
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 134
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ErrorInfo;

    #@6
    .line 135
    .local v0, "retval":Lgov/nist/javax/sip/header/ErrorInfo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 136
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    #@14
    .line 137
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v2, "<"

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    iget-object v2, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    #@a
    invoke-virtual {v2}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v1

    #@12
    .line 80
    const-string/jumbo v2, ">"

    #@15
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v0

    #@19
    .line 81
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->parameters:Lgov/nist/core/NameValueList;

    #@1b
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_0

    #@21
    .line 82
    const-string/jumbo v1, ";"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    move-result-object v1

    #@28
    iget-object v2, p0, Lgov/nist/javax/sip/header/ErrorInfo;->parameters:Lgov/nist/core/NameValueList;

    #@2a
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    return-object v1
.end method

.method public getErrorInfo()Ljavax/sip/address/URI;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    const-string/jumbo v0, "message"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ErrorInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public setErrorInfo(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "errorInfo"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 94
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    #@2
    .end local p1    # "errorInfo":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    #@4
    .line 93
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    if-nez p1, :cond_0

    #@2
    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 119
    const-string/jumbo v1, "JAIN-SIP Exception , ErrorInfoHeader, setErrorMessage(), the message parameter is null"

    #@7
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 121
    :cond_0
    const-string/jumbo v0, "message"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ErrorInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 116
    return-void
.end method
