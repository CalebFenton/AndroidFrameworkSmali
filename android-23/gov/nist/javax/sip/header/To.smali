.class public final Lgov/nist/javax/sip/header/To;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "To.java"

# interfaces
.implements Ljavax/sip/header/ToHeader;


# static fields
.field private static final serialVersionUID:J = -0x384ed45ac29ca44cL


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "To"

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;Z)V

    #@7
    .line 61
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/header/From;)V
    .locals 1
    .param p1, "from"    # Lgov/nist/javax/sip/header/From;

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "To"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 70
    iget-object v0, p1, Lgov/nist/javax/sip/header/From;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    #@b
    .line 71
    iget-object v0, p1, Lgov/nist/javax/sip/header/From;->parameters:Lgov/nist/core/NameValueList;

    #@d
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->setParameters(Lgov/nist/core/NameValueList;)V

    #@10
    .line 68
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/header/To;->headerName:Ljava/lang/String;

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
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/To;->encodeBody()Ljava/lang/String;

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

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .line 94
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 95
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@7
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@a
    move-result v0

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 96
    const-string/jumbo v0, "<"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    .line 98
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@15
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@18
    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@1a
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@1d
    move-result v0

    #@1e
    if-ne v0, v1, :cond_1

    #@20
    .line 100
    const-string/jumbo v0, ">"

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    .line 103
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    #@28
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_2

    #@2e
    .line 104
    const-string/jumbo v0, ";"

    #@31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    .line 105
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    #@36
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@39
    .line 108
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 189
    instance-of v0, p1, Ljavax/sip/header/ToHeader;

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
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 129
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 130
    return-object v1

    #@6
    .line 131
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getDisplayName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 118
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 119
    return-object v1

    #@6
    .line 120
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getHostPort()Lgov/nist/core/HostPort;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 140
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 141
    return-object v1

    #@6
    .line 142
    :cond_0
    const-string/jumbo v0, "tag"

    #@9
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getUserAtHostPort()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 183
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 184
    return-object v1

    #@6
    .line 185
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getUserAtHostPort()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public hasTag()Z
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 153
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 154
    :cond_0
    const-string/jumbo v0, "tag"

    #@9
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/To;->hasParameter(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public removeTag()V
    .locals 2

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 163
    iget-object v0, p0, Lgov/nist/javax/sip/header/To;->parameters:Lgov/nist/core/NameValueList;

    #@6
    const-string/jumbo v1, "tag"

    #@9
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@c
    .line 161
    :cond_0
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
    .line 175
    invoke-static {p1}, Lgov/nist/javax/sip/parser/Parser;->checkToken(Ljava/lang/String;)V

    #@3
    .line 176
    const-string/jumbo v0, "tag"

    #@6
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/To;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 173
    return-void
.end method
