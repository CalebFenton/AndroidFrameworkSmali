.class public Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "PMediaAuthorization.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final serialVersionUID:J = -0x59b36d79798089bdL


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 80
    const-string/jumbo v0, "P-Media-Authorization"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 78
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 138
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    #@6
    .line 139
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 140
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    #@c
    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    #@e
    .line 141
    :cond_0
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 127
    instance-of v1, p1, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 129
    check-cast v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    #@7
    .line 130
    .local v0, "o":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->getToken()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;->getToken()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 132
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setMediaAuthorizationToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 104
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@a
    const-string/jumbo v1, " the Media-Authorization-Token parameter is null or empty"

    #@d
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 106
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    #@13
    .line 101
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
