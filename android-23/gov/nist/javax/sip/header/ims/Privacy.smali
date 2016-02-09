.class public Lgov/nist/javax/sip/header/ims/Privacy;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Privacy.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PrivacyHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private privacy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 65
    const-string/jumbo v0, "Privacy"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    #@5
    .line 72
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 141
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ims/Privacy;

    #@6
    .line 142
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/Privacy;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 143
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    #@c
    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    #@e
    .line 144
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 130
    instance-of v1, p1, Lgov/nist/javax/sip/header/ims/PrivacyHeader;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 132
    check-cast v0, Lgov/nist/javax/sip/header/ims/PrivacyHeader;

    #@7
    .line 133
    .local v0, "o":Lgov/nist/javax/sip/header/ims/PrivacyHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/Privacy;->getPrivacy()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/PrivacyHeader;->getPrivacy()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 135
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/PrivacyHeader;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 2
    .param p1, "privacy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    if-ne p1, v0, :cond_1

    #@7
    .line 111
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    .line 112
    const-string/jumbo v1, "JAIN-SIP Exception,  Privacy, setPrivacy(), privacy value is null or empty"

    #@c
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 114
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    #@12
    .line 107
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
    .line 123
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
