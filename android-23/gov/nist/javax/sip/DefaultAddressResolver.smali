.class public Lgov/nist/javax/sip/DefaultAddressResolver;
.super Ljava/lang/Object;
.source "DefaultAddressResolver.java"

# interfaces
.implements Lgov/nist/core/net/AddressResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;
    .locals 4
    .param p1, "inputAddress"    # Ljavax/sip/address/Hop;

    #@0
    .prologue
    .line 64
    invoke-interface {p1}, Ljavax/sip/address/Hop;->getPort()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 65
    return-object p1

    #@8
    .line 67
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/stack/HopImpl;

    #@a
    invoke-interface {p1}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 68
    invoke-interface {p1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->getDefaultPort(Ljava/lang/String;)I

    #@15
    move-result v2

    #@16
    invoke-interface {p1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 67
    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1d
    return-object v0
.end method
