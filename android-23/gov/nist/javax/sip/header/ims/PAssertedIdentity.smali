.class public Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "PAssertedIdentity.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PAssertedIdentityHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "P-Asserted-Identity"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 67
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "P-Asserted-Identity"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 61
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-super {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    #@6
    .line 94
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 77
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@b
    move-result v1

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 78
    const-string/jumbo v1, "<"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 80
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@16
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 81
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@1f
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@22
    move-result v1

    #@23
    if-ne v1, v2, :cond_1

    #@25
    .line 82
    const-string/jumbo v1, ">"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 86
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->parameters:Lgov/nist/core/NameValueList;

    #@2d
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_2

    #@33
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, ","

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->parameters:Lgov/nist/core/NameValueList;

    #@41
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 88
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    return-object v1
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
    .line 99
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
