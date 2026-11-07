.class public final Lgov/nist/javax/sip/address/AddressImpl;
.super Lgov/nist/javax/sip/address/NetObject;
.source "AddressImpl.java"

# interfaces
.implements Ljavax/sip/address/Address;


# static fields
.field public static final greylist ADDRESS_SPEC:I = 0x2

.field public static final greylist NAME_ADDR:I = 0x1

.field public static final greylist WILD_CARD:I = 0x3

.field private static final whitelist serialVersionUID:J = 0x5f6385b6042972bL


# instance fields
.field protected greylist address:Lgov/nist/javax/sip/address/GenericURI;

.field protected greylist addressType:I

.field protected greylist displayName:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 189
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    .line 191
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 340
    invoke-super {p0}, Lgov/nist/javax/sip/address/NetObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    .line 341
    .local v0, "retval":Lgov/nist/javax/sip/address/AddressImpl;
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_14

    .line 342
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v1, v0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 343
    :cond_14
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 168
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 169
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_48

    .line 172
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 173
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 176
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_24
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v0, :cond_48

    .line 179
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 180
    :cond_31
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_36
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 182
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    if-eq v0, v1, :cond_43

    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_48

    .line 183
    :cond_43
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :cond_48
    :goto_48
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 261
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 263
    :cond_4
    instance-of v0, p1, Ljavax/sip/address/Address;

    if-eqz v0, :cond_18

    .line 264
    move-object v0, p1

    check-cast v0, Ljavax/sip/address/Address;

    .line 267
    .local v0, "o":Ljavax/sip/address/Address;
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/AddressImpl;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/address/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 269
    .end local v0    # "o":Ljavax/sip/address/Address;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getAddressType()I
    .registers 2

    .line 198
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    return v0
.end method

.method public greylist getDisplayName()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getHost()Ljava/lang/String;
    .registers 3

    .line 142
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v0, v0, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_17

    .line 144
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 145
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 143
    .end local v0    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address is not a SipUri"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getHostPort()Lgov/nist/core/HostPort;
    .registers 3

    .line 104
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v0, v0, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_f

    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 107
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v1

    return-object v1

    .line 105
    .end local v0    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address is not a SipUri"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getPort()I
    .registers 3

    .line 117
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v0, v0, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_13

    .line 119
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 120
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    return v1

    .line 118
    .end local v0    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address is not a SipUri"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getURI()Ljavax/sip/address/URI;
    .registers 2

    .line 301
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public greylist getUserAtHostPort()Ljava/lang/String;
    .registers 3

    .line 130
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v0, v0, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_f

    .line 131
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 132
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getUserAtHostPort()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    .end local v0    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_f
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist hasDisplayName()Z
    .registers 2

    .line 277
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 248
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isSIPAddress()Z
    .registers 2

    .line 292
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v0, v0, Lgov/nist/javax/sip/address/SipUri;

    return v0
.end method

.method public greylist isWildcard()Z
    .registers 3

    .line 310
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist match(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 82
    return v0

    .line 83
    :cond_4
    instance-of v1, p1, Ljavax/sip/address/Address;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 84
    return v2

    .line 86
    :cond_a
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    .line 87
    .local v1, "that":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getMatcher()Lgov/nist/core/Match;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 88
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getMatcher()Lgov/nist/core/Match;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 89
    :cond_20
    iget-object v3, v1, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-nez v3, :cond_29

    .line 90
    return v2

    .line 91
    :cond_29
    iget-object v3, v1, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-nez v3, :cond_36

    .line 92
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    iget-object v2, v1, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/GenericURI;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 94
    :cond_36
    iget-object v3, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    iget-object v4, v1, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    iget-object v4, v1, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 95
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/address/GenericURI;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v2

    .line 94
    :goto_4c
    return v0
.end method

.method public greylist removeDisplayName()V
    .registers 2

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public greylist removeParameter(Ljava/lang/String;)V
    .registers 4
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v0, v0, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_e

    .line 155
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 156
    .local v0, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->removeParameter(Ljava/lang/String;)V

    .line 157
    return-void

    .line 154
    .end local v0    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address is not a SipUri"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setAddess(Ljavax/sip/address/URI;)V
    .registers 3
    .param p1, "address"    # Ljavax/sip/address/URI;

    .line 240
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 241
    return-void
.end method

.method public greylist setAddressType(I)V
    .registers 2
    .param p1, "atype"    # I

    .line 209
    iput p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    .line 210
    return-void
.end method

.method public greylist setDisplayName(Ljava/lang/String;)V
    .registers 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 229
    iput-object p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    .line 230
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    .line 231
    return-void
.end method

.method public greylist setURI(Ljavax/sip/address/URI;)V
    .registers 3
    .param p1, "address"    # Ljavax/sip/address/URI;

    .line 319
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 320
    return-void
.end method

.method public greylist setUser(Ljava/lang/String;)V
    .registers 3
    .param p1, "user"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public greylist setWildCardFlag()V
    .registers 3

    .line 334
    const/4 v0, 0x3

    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    .line 335
    new-instance v0, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 336
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    .line 337
    return-void
.end method
