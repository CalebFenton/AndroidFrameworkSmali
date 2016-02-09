.class public abstract Lgov/nist/javax/sip/header/AddressParametersHeader;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AddressParametersHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;


# instance fields
.field protected address:Lgov/nist/javax/sip/address/AddressImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@3
    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;Z)V

    #@3
    .line 77
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 85
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/AddressParametersHeader;

    #@6
    .line 86
    .local v0, "retval":Lgov/nist/javax/sip/header/AddressParametersHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 87
    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@14
    .line 88
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 99
    :cond_0
    instance-of v2, p1, Ljavax/sip/header/HeaderAddress;

    #@7
    if-eqz v2, :cond_2

    #@9
    instance-of v2, p1, Ljavax/sip/header/Parameters;

    #@b
    if-eqz v2, :cond_2

    #@d
    move-object v0, p1

    #@e
    .line 100
    check-cast v0, Ljavax/sip/header/HeaderAddress;

    #@10
    .line 101
    .local v0, "o":Ljavax/sip/header/HeaderAddress;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->getAddress()Ljavax/sip/address/Address;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v0}, Ljavax/sip/header/HeaderAddress;->getAddress()Ljavax/sip/address/Address;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v2, v3}, Ljavax/sip/address/Address;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    check-cast v0, Ljavax/sip/header/Parameters;

    #@20
    .end local v0    # "o":Ljavax/sip/header/HeaderAddress;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    #@23
    move-result v1

    #@24
    :cond_1
    return v1

    #@25
    .line 103
    :cond_2
    return v1
.end method

.method public getAddress()Ljavax/sip/address/Address;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    return-object v0
.end method

.method public setAddress(Ljavax/sip/address/Address;)V
    .locals 0
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 60
    check-cast p1, Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    .end local p1    # "address":Ljavax/sip/address/Address;
    iput-object p1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@4
    .line 59
    return-void
.end method
