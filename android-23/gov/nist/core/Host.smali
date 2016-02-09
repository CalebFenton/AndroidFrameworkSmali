.class public Lgov/nist/core/Host;
.super Lgov/nist/core/GenericObject;
.source "Host.java"


# static fields
.field protected static final HOSTNAME:I = 0x1

.field protected static final IPV4ADDRESS:I = 0x2

.field protected static final IPV6ADDRESS:I = 0x3

.field private static final serialVersionUID:J = -0x6462c89aa1f7b990L


# instance fields
.field protected addressType:I

.field protected hostname:Ljava/lang/String;

.field private inetAddress:Ljava/net/InetAddress;

.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    #@6
    .line 86
    const/4 v0, 0x1

    #@7
    iput v0, p0, Lgov/nist/core/Host;->addressType:I

    #@9
    .line 89
    const-string/jumbo v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    #@c
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 88
    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    #@12
    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    #@6
    .line 95
    if-nez p1, :cond_0

    #@8
    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "null host name"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 99
    :cond_0
    const-string/jumbo v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    #@14
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    .line 98
    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    #@1a
    .line 101
    const/4 v0, 0x2

    #@1b
    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    #@1e
    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addrType"    # I

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    #@6
    .line 110
    const-string/jumbo v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    #@9
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    .line 109
    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    #@f
    .line 112
    invoke-direct {p0, p1, p2}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    #@12
    .line 108
    return-void
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 283
    if-eqz p1, :cond_0

    #@3
    const/16 v1, 0x3a

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v1

    #@9
    const/4 v2, -0x1

    #@a
    if-eq v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method public static isIPv6Reference(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v1

    #@5
    const/16 v2, 0x5b

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    const/16 v2, 0x5d

    #@15
    if-ne v1, v2, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 291
    :cond_0
    return v0
.end method

.method private setHost(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "type"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x3

    #@2
    .line 210
    iput-object v1, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    #@4
    .line 212
    invoke-direct {p0, p1}, Lgov/nist/core/Host;->isIPv6Address(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_2

    #@a
    .line 213
    iput v3, p0, Lgov/nist/core/Host;->addressType:I

    #@c
    .line 218
    :goto_0
    if-eqz p1, :cond_1

    #@e
    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@14
    .line 222
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    #@16
    const/4 v2, 0x1

    #@17
    if-ne v1, v2, :cond_0

    #@19
    .line 223
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@1b
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@21
    .line 227
    :cond_0
    const/4 v0, -0x1

    #@22
    .line 228
    .local v0, "zoneStart":I
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    #@24
    if-ne v1, v3, :cond_1

    #@26
    .line 229
    iget-boolean v1, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    #@28
    .line 228
    if-eqz v1, :cond_1

    #@2a
    .line 230
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@2c
    const/16 v2, 0x25

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@31
    move-result v0

    #@32
    const/4 v1, -0x1

    #@33
    if-eq v0, v1, :cond_1

    #@35
    .line 232
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@37
    const/4 v2, 0x0

    #@38
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@3e
    .line 207
    .end local v0    # "zoneStart":I
    :cond_1
    return-void

    #@3f
    .line 215
    :cond_2
    iput p2, p0, Lgov/nist/core/Host;->addressType:I

    #@41
    goto :goto_0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 124
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@7
    invoke-static {v0}, Lgov/nist/core/Host;->isIPv6Reference(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 127
    :cond_0
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 129
    :goto_0
    return-object p1

    #@13
    .line 125
    :cond_1
    const/16 v0, 0x5b

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v0

    #@1f
    const/16 v1, 0x5d

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@24
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 140
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 141
    :cond_0
    invoke-virtual {p0}, Lgov/nist/core/Host;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 142
    return v3

    #@13
    :cond_1
    move-object v0, p1

    #@14
    .line 144
    check-cast v0, Lgov/nist/core/Host;

    #@16
    .line 145
    .local v0, "otherHost":Lgov/nist/core/Host;
    iget-object v1, v0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@18
    iget-object v2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 268
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 269
    return-object v1

    #@6
    .line 270
    :cond_0
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 271
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    #@c
    return-object v0

    #@d
    .line 272
    :cond_1
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@f
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    #@15
    .line 273
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    #@17
    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 169
    const/4 v1, 0x0

    #@2
    .line 170
    .local v1, "rawIpAddress":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 171
    return-object v3

    #@7
    .line 172
    :cond_0
    iget v2, p0, Lgov/nist/core/Host;->addressType:I

    #@9
    const/4 v3, 0x1

    #@a
    if-ne v2, v3, :cond_2

    #@c
    .line 174
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    #@e
    if-nez v2, :cond_1

    #@10
    .line 175
    iget-object v2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@12
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    #@18
    .line 176
    :cond_1
    iget-object v2, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    #@1a
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v1

    #@1e
    .line 183
    .end local v1    # "rawIpAddress":Ljava/lang/String;
    :goto_0
    return-object v1

    #@1f
    .line 177
    .restart local v1    # "rawIpAddress":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    .line 178
    .local v0, "ex":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Could not resolve hostname "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {p0, v2}, Lgov/nist/core/Host;->dbgPrint(Ljava/lang/String;)V

    #@37
    goto :goto_0

    #@38
    .line 181
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :cond_2
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    #@3a
    .local v1, "rawIpAddress":Ljava/lang/String;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 297
    invoke-virtual {p0}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isHostname()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 250
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isIPAddress()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 258
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lgov/nist/core/Host;->setHostAddress(Ljava/lang/String;)V

    #@3
    .line 241
    return-void
.end method

.method public setHostAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    #@4
    .line 197
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 1
    .param p1, "h"    # Ljava/lang/String;

    #@0
    .prologue
    .line 191
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    #@4
    .line 190
    return-void
.end method
