.class public abstract Lgov/nist/javax/sip/header/ims/AddressHeaderIms;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "AddressHeaderIms.java"


# instance fields
.field protected greylist address:Lgov/nist/javax/sip/address/AddressImpl;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 76
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;

    .line 77
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/AddressHeaderIms;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-eqz v1, :cond_14

    .line 78
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 79
    :cond_14
    return-object v0
.end method

.method public abstract greylist encodeBody()Ljava/lang/String;
.end method

.method public greylist getAddress()Ljavax/sip/address/Address;
    .registers 2

    .line 52
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    return-object v0
.end method

.method public greylist setAddress(Ljavax/sip/address/Address;)V
    .registers 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 60
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object v0, p0, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 61
    return-void
.end method
