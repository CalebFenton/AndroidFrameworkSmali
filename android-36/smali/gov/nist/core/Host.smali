.class public Lgov/nist/core/Host;
.super Lgov/nist/core/GenericObject;
.source "Host.java"


# static fields
.field protected static final greylist HOSTNAME:I = 0x1

.field protected static final greylist IPV4ADDRESS:I = 0x2

.field protected static final greylist IPV6ADDRESS:I = 0x3

.field private static final whitelist serialVersionUID:J = -0x6462c89aa1f7b990L


# instance fields
.field protected greylist addressType:I

.field protected greylist hostname:Ljava/lang/String;

.field private greylist inetAddress:Ljava/net/InetAddress;

.field private greylist stripAddressScopeZones:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/core/Host;->addressType:I

    .line 88
    nop

    .line 89
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 90
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 95
    if-eqz p1, :cond_16

    .line 98
    nop

    .line 99
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 101
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 102
    return-void

    .line 96
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null host name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addrType"    # I

    .line 108
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 109
    nop

    .line 110
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 112
    invoke-direct {p0, p1, p2}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 113
    return-void
.end method

.method private greylist isIPv6Address(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 283
    if-eqz p1, :cond_d

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static greylist isIPv6Reference(Ljava/lang/String;)Z
    .registers 5
    .param p0, "address"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_19

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    nop

    .line 291
    :goto_1a
    return v0
.end method

.method private greylist setHost(Ljava/lang/String;I)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 212
    invoke-direct {p0, p1}, Lgov/nist/core/Host;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_d

    .line 213
    iput v1, p0, Lgov/nist/core/Host;->addressType:I

    goto :goto_f

    .line 215
    :cond_d
    iput p2, p0, Lgov/nist/core/Host;->addressType:I

    .line 218
    :goto_f
    if-eqz p1, :cond_42

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 222
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    .line 223
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 227
    :cond_24
    const/4 v0, -0x1

    .line 228
    .local v0, "zoneStart":I
    iget v2, p0, Lgov/nist/core/Host;->addressType:I

    if-ne v2, v1, :cond_42

    iget-boolean v1, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    if-eqz v1, :cond_42

    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 230
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_42

    .line 232
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 235
    .end local v0    # "zoneStart":I
    :cond_42
    return-void
.end method


# virtual methods
.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 124
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v0}, Lgov/nist/core/Host;->isIPv6Reference(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 125
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_24

    .line 127
    :cond_1f
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :goto_24
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 141
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 142
    return v0

    .line 144
    :cond_13
    move-object v0, p1

    check-cast v0, Lgov/nist/core/Host;

    .line 145
    .local v0, "otherHost":Lgov/nist/core/Host;
    iget-object v1, v0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    iget-object v2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public greylist getAddress()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getHostname()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getInetAddress()Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 269
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_6
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_d

    .line 271
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    return-object v0

    .line 272
    :cond_d
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 273
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getIpAddress()Ljava/lang/String;
    .registers 5

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "rawIpAddress":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 171
    const/4 v1, 0x0

    return-object v1

    .line 172
    :cond_7
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    .line 174
    :try_start_c
    iget-object v1, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_18

    .line 175
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 176
    :cond_18
    iget-object v1, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_1e} :catch_20

    move-object v0, v1

    goto :goto_37

    .line 177
    :catch_20
    move-exception v1

    .line 178
    .local v1, "ex":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve hostname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/core/Host;->dbgPrint(Ljava/lang/String;)V

    .line 179
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    :goto_37
    goto :goto_3a

    .line 181
    :cond_38
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 183
    :goto_3a
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 297
    invoke-virtual {p0}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isHostname()Z
    .registers 3

    .line 250
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public greylist isIPAddress()Z
    .registers 3

    .line 258
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public greylist setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 242
    invoke-virtual {p0, p1}, Lgov/nist/core/Host;->setHostAddress(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public greylist setHostAddress(Ljava/lang/String;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 198
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method public greylist setHostname(Ljava/lang/String;)V
    .registers 3
    .param p1, "h"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 192
    return-void
.end method
