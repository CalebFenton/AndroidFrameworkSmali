.class public final Lgov/nist/javax/sip/header/From;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "From.java"

# interfaces
.implements Ljavax/sip/header/FromHeader;


# static fields
.field private static final serialVersionUID:J = -0x579b4ff92e364db4L


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "From"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 59
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/header/To;)V
    .locals 1
    .param p1, "to"    # Lgov/nist/javax/sip/header/To;

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "From"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 67
    iget-object v0, p1, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@a
    .line 68
    iget-object v0, p1, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    #@c
    iput-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    #@e
    .line 65
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/From;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@3
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@6
    move-result v0

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 82
    const-string/jumbo v0, "<"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 84
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@11
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@14
    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@16
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@19
    move-result v0

    #@1a
    if-ne v0, v1, :cond_1

    #@1c
    .line 86
    const-string/jumbo v0, ">"

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 88
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    #@24
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_2

    #@2a
    .line 89
    const-string/jumbo v0, ";"

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 90
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    #@32
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@35
    .line 92
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 161
    instance-of v0, p1, Ljavax/sip/header/FromHeader;

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

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

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
    .line 102
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getHostPort()Lgov/nist/core/HostPort;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 118
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 119
    return-object v1

    #@6
    .line 120
    :cond_0
    const-string/jumbo v0, "tag"

    #@9
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/From;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getUserAtHostPort()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getUserAtHostPort()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasTag()Z
    .locals 1

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, "tag"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/From;->hasParameter(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public removeTag()V
    .locals 2

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "tag"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@8
    .line 132
    return-void
.end method

.method public setAddress(Ljavax/sip/address/Address;)V
    .locals 0
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 141
    check-cast p1, Lgov/nist/javax/sip/address/AddressImpl;

    #@2
    .end local p1    # "address":Ljavax/sip/address/Address;
    iput-object p1, p0, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@4
    .line 140
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-static {p1}, Lgov/nist/javax/sip/parser/Parser;->checkToken(Ljava/lang/String;)V

    #@3
    .line 151
    const-string/jumbo v0, "tag"

    #@6
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/From;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 148
    return-void
.end method
