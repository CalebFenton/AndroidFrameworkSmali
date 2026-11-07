.class public final Lgov/nist/javax/sip/header/ErrorInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ErrorInfo.java"

# interfaces
.implements Ljavax/sip/header/ErrorInfoHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x58179228634e738aL


# instance fields
.field protected greylist errorInfo:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 61
    const-string v0, "Error-Info"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/javax/sip/address/GenericURI;)V
    .registers 2
    .param p1, "errorInfo"    # Lgov/nist/javax/sip/address/GenericURI;

    .line 69
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>()V

    .line 70
    iput-object p1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 134
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ErrorInfo;

    .line 135
    .local v0, "retval":Lgov/nist/javax/sip/header/ErrorInfo;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_14

    .line 136
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    .line 137
    :cond_14
    return-object v0
.end method

.method public greylist encodeBody()Ljava/lang/String;
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    .line 79
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 81
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 82
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ErrorInfo;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getErrorInfo()Ljavax/sip/address/URI;
    .registers 2

    .line 105
    iget-object v0, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public greylist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ErrorInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist setErrorInfo(Ljavax/sip/address/URI;)V
    .registers 3
    .param p1, "errorInfo"    # Ljavax/sip/address/URI;

    .line 94
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v0, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    .line 96
    return-void
.end method

.method public greylist setErrorMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 117
    if-eqz p1, :cond_8

    .line 121
    const-string v0, "message"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ErrorInfo;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 118
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception , ErrorInfoHeader, setErrorMessage(), the message parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
