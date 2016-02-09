.class public final Lgov/nist/javax/sip/header/extensions/ReferredBy;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "ReferredBy.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;
.implements Lgov/nist/javax/sip/header/extensions/ReferredByHeader;


# static fields
.field public static final NAME:Ljava/lang/String; = "Referred-By"

.field private static final serialVersionUID:J = 0x2b7f6e1819e3cbcbL


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    const-string/jumbo v0, "Referred-By"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 38
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
    .line 53
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/ReferredBy;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 54
    return-object v2

    #@7
    .line 55
    :cond_0
    const-string/jumbo v0, ""

    #@a
    .line 56
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/ReferredBy;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@f
    move-result v1

    #@10
    if-ne v1, v3, :cond_1

    #@12
    .line 57
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
    .line 59
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Lgov/nist/javax/sip/header/extensions/ReferredBy;->address:Lgov/nist/javax/sip/address/AddressImpl;

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
    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/ReferredBy;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@3f
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@42
    move-result v1

    #@43
    if-ne v1, v3, :cond_2

    #@45
    .line 61
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
    .line 64
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/ReferredBy;->parameters:Lgov/nist/core/NameValueList;

    #@5b
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@5e
    move-result v1

    #@5f
    if-nez v1, :cond_3

    #@61
    .line 65
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
    iget-object v2, p0, Lgov/nist/javax/sip/header/extensions/ReferredBy;->parameters:Lgov/nist/core/NameValueList;

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
    .line 67
    :cond_3
    return-object v0
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
    .line 44
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
