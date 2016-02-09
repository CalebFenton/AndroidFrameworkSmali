.class public final Lgov/nist/javax/sip/header/ReferTo;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "ReferTo.java"

# interfaces
.implements Ljavax/sip/header/ReferToHeader;


# static fields
.field private static final serialVersionUID:J = -0x17214f358828de23L


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "Refer-To"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 57
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x2

    #@2
    .line 66
    iget-object v1, p0, Lgov/nist/javax/sip/header/ReferTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 67
    return-object v2

    #@7
    .line 68
    :cond_0
    const-string/jumbo v0, ""

    #@a
    .line 69
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ReferTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@f
    move-result v1

    #@10
    if-ne v1, v3, :cond_1

    #@12
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "<"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 72
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Lgov/nist/javax/sip/header/ReferTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@31
    invoke-virtual {v2}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 73
    iget-object v1, p0, Lgov/nist/javax/sip/header/ReferTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@3f
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@42
    move-result v1

    #@43
    if-ne v1, v3, :cond_2

    #@45
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, ">"

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    .line 77
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/ReferTo;->parameters:Lgov/nist/core/NameValueList;

    #@5b
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@5e
    move-result v1

    #@5f
    if-nez v1, :cond_3

    #@61
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    const-string/jumbo v2, ";"

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget-object v2, p0, Lgov/nist/javax/sip/header/ReferTo;->parameters:Lgov/nist/core/NameValueList;

    #@73
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    .line 80
    :cond_3
    return-object v0
.end method
