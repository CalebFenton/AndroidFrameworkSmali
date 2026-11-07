.class public Lgov/nist/javax/sip/DefaultAddressResolver;
.super Ljava/lang/Object;
.source "DefaultAddressResolver.java"

# interfaces
.implements Lgov/nist/core/net/AddressResolver;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public greylist resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;
    .registers 6
    .param p1, "inputAddress"    # Ljavax/sip/address/Hop;

    .line 64
    invoke-interface {p1}, Ljavax/sip/address/Hop;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 65
    return-object p1

    .line 67
    :cond_8
    new-instance v0, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-interface {p1}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-interface {p1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->getDefaultPort(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    return-object v0
.end method
