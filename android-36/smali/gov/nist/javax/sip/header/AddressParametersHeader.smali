.class public abstract Lgov/nist/javax/sip/header/AddressParametersHeader;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AddressParametersHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;


# instance fields
.field protected greylist address:Lgov/nist/javax/sip/address/AddressImpl;


# direct methods
.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .line 78
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 85
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AddressParametersHeader;

    .line 86
    .local v0, "retval":Lgov/nist/javax/sip/header/AddressParametersHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-eqz v1, :cond_14

    .line 87
    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object v1, v0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 88
    :cond_14
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 99
    :cond_4
    instance-of v1, p1, Ljavax/sip/header/HeaderAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    instance-of v1, p1, Ljavax/sip/header/Parameters;

    if-eqz v1, :cond_2a

    .line 100
    move-object v1, p1

    check-cast v1, Ljavax/sip/header/HeaderAddress;

    .line 101
    .local v1, "o":Ljavax/sip/header/HeaderAddress;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v3

    invoke-interface {v1}, Ljavax/sip/header/HeaderAddress;->getAddress()Ljavax/sip/address/Address;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/sip/address/Address;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move-object v3, v1

    check-cast v3, Ljavax/sip/header/Parameters;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/header/AddressParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    return v0

    .line 103
    .end local v1    # "o":Ljavax/sip/header/HeaderAddress;
    :cond_2a
    return v2
.end method

.method public greylist getAddress()Ljavax/sip/address/Address;
    .registers 2

    .line 53
    iget-object v0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    return-object v0
.end method

.method public greylist setAddress(Ljavax/sip/address/Address;)V
    .registers 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 60
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object v0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 61
    return-void
.end method
