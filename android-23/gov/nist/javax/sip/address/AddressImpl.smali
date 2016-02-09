.class public final Lgov/nist/javax/sip/address/AddressImpl;
.super Lgov/nist/javax/sip/address/NetObject;
.source "AddressImpl.java"

# interfaces
.implements Ljavax/sip/address/Address;


# static fields
.field public static final ADDRESS_SPEC:I = 0x2

.field public static final NAME_ADDR:I = 0x1

.field public static final WILD_CARD:I = 0x3

.field private static final serialVersionUID:J = 0x5f6385b6042972bL


# instance fields
.field protected address:Lgov/nist/javax/sip/address/GenericURI;

.field protected addressType:I

.field protected displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    #@3
    .line 190
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    #@6
    .line 189
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 340
    invoke-super {p0}, Lgov/nist/javax/sip/address/NetObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@6
    .line 341
    .local v0, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 342
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@14
    .line 343
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 168
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    #@3
    const/4 v1, 0x3

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 169
    const/16 v0, 0x2a

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@b
    .line 186
    :cond_0
    :goto_0
    return-object p1

    #@c
    .line 172
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 173
    const-string/jumbo v0, "\""

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    move-result-object v0

    #@17
    .line 174
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@19
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v0

    #@1d
    .line 175
    const-string/jumbo v1, "\""

    #@20
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v0

    #@24
    .line 176
    const-string/jumbo v1, " "

    #@27
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 178
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2c
    if-eqz v0, :cond_0

    #@2e
    .line 179
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    #@30
    if-eq v0, v2, :cond_3

    #@32
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@34
    if-eqz v0, :cond_4

    #@36
    .line 180
    :cond_3
    const-string/jumbo v0, "<"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    .line 181
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@3e
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@41
    .line 182
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    #@43
    if-eq v0, v2, :cond_5

    #@45
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@47
    if-eqz v0, :cond_0

    #@49
    .line 183
    :cond_5
    const-string/jumbo v0, ">"

    #@4c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 261
    if-ne p0, p1, :cond_0

    #@2
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 263
    :cond_0
    instance-of v1, p1, Ljavax/sip/address/Address;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 264
    check-cast v0, Ljavax/sip/address/Address;

    #@b
    .line 267
    .local v0, "o":Ljavax/sip/address/Address;
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/AddressImpl;->getURI()Ljavax/sip/address/URI;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 269
    .end local v0    # "o":Ljavax/sip/address/Address;
    :cond_1
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public getAddressType()I
    .locals 1

    #@0
    .prologue
    .line 198
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    #@2
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 142
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "address is not a SipUri"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 144
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@11
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    #@13
    .line 145
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 3

    #@0
    .prologue
    .line 104
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "address is not a SipUri"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 106
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@11
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    #@13
    .line 107
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public getPort()I
    .locals 3

    #@0
    .prologue
    .line 117
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "address is not a SipUri"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 119
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@11
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    #@13
    .line 120
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getPort()I

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method public getURI()Ljavax/sip/address/URI;
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    return-object v0
.end method

.method public getUserAtHostPort()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 130
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 131
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@8
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    #@a
    .line 132
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getUserAtHostPort()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 134
    .end local v0    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@11
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public hasDisplayName()Z
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSIPAddress()Z
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    instance-of v0, v0, Lgov/nist/javax/sip/address/SipUri;

    #@4
    return v0
.end method

.method public isWildcard()Z
    .locals 2

    #@0
    .prologue
    .line 310
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    if-nez p1, :cond_0

    #@3
    .line 82
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 83
    :cond_0
    instance-of v2, p1, Ljavax/sip/address/Address;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 84
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 86
    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    #@d
    .line 87
    .local v0, "that":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getMatcher()Lgov/nist/core/Match;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 88
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getMatcher()Lgov/nist/core/Match;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v1, v2}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 89
    :cond_2
    iget-object v2, v0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@22
    if-eqz v2, :cond_3

    #@24
    iget-object v2, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@26
    if-nez v2, :cond_3

    #@28
    .line 90
    return v1

    #@29
    .line 91
    :cond_3
    iget-object v2, v0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@2b
    if-nez v2, :cond_4

    #@2d
    .line 92
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2f
    iget-object v2, v0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@31
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/address/GenericURI;->match(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 94
    :cond_4
    iget-object v2, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@38
    iget-object v3, v0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_5

    #@40
    .line 95
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@42
    iget-object v2, v0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@44
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/address/GenericURI;->match(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    .line 94
    :cond_5
    return v1
.end method

.method public removeDisplayName()V
    .locals 1

    #@0
    .prologue
    .line 283
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@3
    .line 282
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "address is not a SipUri"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 155
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@11
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    #@13
    .line 156
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->removeParameter(Ljava/lang/String;)V

    #@16
    .line 152
    return-void
.end method

.method public setAddess(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "address"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 240
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    #@2
    .end local p1    # "address":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@4
    .line 239
    return-void
.end method

.method public setAddressType(I)V
    .locals 0
    .param p1, "atype"    # I

    #@0
    .prologue
    .line 209
    iput p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    #@2
    .line 208
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 229
    iput-object p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    #@2
    .line 230
    const/4 v0, 0x1

    #@3
    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    #@5
    .line 228
    return-void
.end method

.method public setURI(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "address"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 319
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    #@2
    .end local p1    # "address":Ljavax/sip/address/URI;
    iput-object p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@4
    .line 318
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@2
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    #@4
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    #@7
    .line 326
    return-void
.end method

.method public setWildCardFlag()V
    .locals 2

    #@0
    .prologue
    .line 334
    const/4 v0, 0x3

    #@1
    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    #@3
    .line 335
    new-instance v0, Lgov/nist/javax/sip/address/SipUri;

    #@5
    invoke-direct {v0}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@a
    .line 336
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    #@c
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    #@e
    const-string/jumbo v1, "*"

    #@11
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    #@14
    .line 333
    return-void
.end method
