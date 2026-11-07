.class public Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "PMediaAuthorization.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x59b36d79798089bdL


# instance fields
.field private greylist token:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 80
    const-string v0, "P-Media-Authorization"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 138
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    .line 139
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 140
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    .line 141
    :cond_e
    return-object v0
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 127
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    if-eqz v0, :cond_14

    .line 129
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    .line 130
    .local v0, "o":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 132
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getToken()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setMediaAuthorizationToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 103
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    .line 107
    return-void

    .line 104
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, " the Media-Authorization-Token parameter is null or empty"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
