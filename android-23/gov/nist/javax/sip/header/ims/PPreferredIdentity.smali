.class public Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "PPreferredIdentity.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PPreferredIdentityHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "P-Preferred-Identity"

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
    const-string/jumbo v0, "P-Preferred-Identity"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 61
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    .line 59
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 76
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@b
    move-result v1

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 77
    const-string/jumbo v1, "<"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 79
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@16
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 80
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@1f
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@22
    move-result v1

    #@23
    if-ne v1, v2, :cond_1

    #@25
    .line 81
    const-string/jumbo v1, ">"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
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
    .line 89
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
