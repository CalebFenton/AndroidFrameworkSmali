.class public Lgov/nist/javax/sip/header/Route;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "Route.java"

# interfaces
.implements Ljavax/sip/header/RouteHeader;


# static fields
.field private static final serialVersionUID:J = 0x4ee01f7faef81a4eL


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "Route"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 55
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "Route"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 67
    iput-object p1, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    .line 65
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Route;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 91
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x1

    #@7
    if-ne v1, v2, :cond_1

    #@9
    const/4 v0, 0x1

    #@a
    .line 92
    .local v0, "addrFlag":Z
    :goto_0
    if-nez v0, :cond_2

    #@c
    .line 93
    const/16 v1, 0x3c

    #@e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@11
    .line 94
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@13
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@16
    .line 95
    const/16 v1, 0x3e

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b
    .line 99
    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->parameters:Lgov/nist/core/NameValueList;

    #@1d
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_0

    #@23
    .line 100
    const-string/jumbo v1, ";"

    #@26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 101
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->parameters:Lgov/nist/core/NameValueList;

    #@2b
    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@2e
    .line 103
    :cond_0
    return-object p1

    #@2f
    .line 91
    .end local v0    # "addrFlag":Z
    :cond_1
    const/4 v0, 0x0

    #@30
    .restart local v0    # "addrFlag":Z
    goto :goto_0

    #@31
    .line 97
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@33
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@36
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 107
    instance-of v0, p1, Ljavax/sip/header/RouteHeader;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/AddressParametersHeader;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/Route;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getHostPort()Lgov/nist/core/HostPort;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@11
    move-result v0

    #@12
    return v0
.end method
