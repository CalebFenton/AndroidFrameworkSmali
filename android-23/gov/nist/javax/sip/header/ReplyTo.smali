.class public final Lgov/nist/javax/sip/header/ReplyTo;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "ReplyTo.java"

# interfaces
.implements Ljavax/sip/header/ReplyToHeader;


# static fields
.field private static final serialVersionUID:J = -0x7e56d5c2cff7cbedL


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "Reply-To"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 57
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "Reply-To"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 68
    iput-object p1, p0, Lgov/nist/javax/sip/header/ReplyTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    .line 66
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/header/ReplyTo;->headerName:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ":"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ReplyTo;->encodeBody()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, "\r\n"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 84
    const-string/jumbo v0, ""

    #@4
    .line 85
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ReplyTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@6
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@9
    move-result v1

    #@a
    if-ne v1, v3, :cond_0

    #@c
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "<"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Lgov/nist/javax/sip/header/ReplyTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2b
    invoke-virtual {v2}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 89
    iget-object v1, p0, Lgov/nist/javax/sip/header/ReplyTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@39
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@3c
    move-result v1

    #@3d
    if-ne v1, v3, :cond_1

    #@3f
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    const-string/jumbo v2, ">"

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    .line 92
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/ReplyTo;->parameters:Lgov/nist/core/NameValueList;

    #@55
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@58
    move-result v1

    #@59
    if-nez v1, :cond_2

    #@5b
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    const-string/jumbo v2, ";"

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    iget-object v2, p0, Lgov/nist/javax/sip/header/ReplyTo;->parameters:Lgov/nist/core/NameValueList;

    #@6d
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    .line 95
    :cond_2
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lgov/nist/javax/sip/header/ReplyTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getDisplayName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lgov/nist/javax/sip/header/ReplyTo;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getHostPort()Lgov/nist/core/HostPort;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
