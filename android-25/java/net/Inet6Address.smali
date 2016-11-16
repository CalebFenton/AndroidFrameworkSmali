.class public final Ljava/net/Inet6Address;
.super Ljava/net/InetAddress;
.source "Inet6Address.java"


# static fields
.field public static final ANY:Ljava/net/InetAddress;

.field static final INADDRSZ:I = 0x10

.field private static final INT16SZ:I = 0x2

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field private ifname:Ljava/lang/String;

.field ipaddress:[B

.field private scope_id:I

.field private scope_id_set:Z

.field private transient scope_ifname:Ljava/net/NetworkInterface;

.field private scope_ifname_set:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    const/4 v3, 0x0

    #@3
    .line 174
    new-instance v0, Ljava/net/Inet6Address;

    #@5
    const-string/jumbo v1, "::"

    #@8
    new-array v2, v4, [B

    #@a
    fill-array-data v2, :array_0

    #@d
    invoke-direct {v0, v1, v2, v3}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    #@10
    .line 173
    sput-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@12
    .line 177
    new-instance v0, Ljava/net/Inet6Address;

    #@14
    const-string/jumbo v1, "ip6-localhost"

    #@17
    .line 178
    new-array v2, v4, [B

    #@19
    fill-array-data v2, :array_1

    #@1c
    .line 177
    invoke-direct {v0, v1, v2, v3}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    #@1f
    sput-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    #@21
    .line 169
    return-void

    #@22
    .line 174
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@2e
    .line 178
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 214
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    #@5
    .line 191
    iput v0, p0, Ljava/net/Inet6Address;->scope_id:I

    #@7
    .line 197
    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@9
    .line 203
    iput-object v1, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@b
    .line 209
    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@d
    .line 215
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@10
    move-result-object v0

    #@11
    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@13
    .line 216
    const/16 v0, 0x10

    #@15
    new-array v0, v0, [B

    #@17
    iput-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@19
    .line 217
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@1c
    move-result-object v0

    #@1d
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    #@1f
    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    #@21
    .line 213
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 236
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    #@5
    .line 191
    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    #@7
    .line 197
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@9
    .line 203
    iput-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@b
    .line 209
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@d
    .line 238
    const/4 v1, 0x0

    #@e
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 236
    :goto_0
    return-void

    #@12
    .line 239
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;[BI)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "scope_id"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 223
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    #@4
    .line 191
    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    #@6
    .line 197
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@8
    .line 203
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@b
    .line 209
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@d
    .line 224
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@10
    move-result-object v0

    #@11
    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@13
    .line 225
    array-length v0, p2

    #@14
    const/16 v1, 0x10

    #@16
    if-ne v0, v1, :cond_0

    #@18
    .line 226
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@1b
    move-result-object v0

    #@1c
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    #@1e
    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    #@20
    .line 227
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, [B

    #@26
    iput-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@28
    .line 230
    :cond_0
    if-lez p3, :cond_1

    #@2a
    .line 231
    iput p3, p0, Ljava/net/Inet6Address;->scope_id:I

    #@2c
    .line 232
    const/4 v0, 0x1

    #@2d
    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@2f
    .line 223
    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 246
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    #@4
    .line 191
    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    #@6
    .line 197
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@8
    .line 203
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@b
    .line 209
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@d
    .line 247
    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initstr(Ljava/lang/String;[BLjava/lang/String;)V

    #@10
    .line 246
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 242
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    #@4
    .line 191
    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    #@6
    .line 197
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@8
    .line 203
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@b
    .line 209
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@d
    .line 243
    invoke-direct {p0, p1, p2, p3}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    #@10
    .line 242
    return-void
.end method

.method private deriveNumericScope(Ljava/lang/String;)I
    .locals 9
    .param p1, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 379
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v3

    #@4
    .line 383
    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_2

    #@a
    .line 384
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v5

    #@e
    check-cast v5, Ljava/net/NetworkInterface;

    #@10
    .line 385
    .local v5, "ifc":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_0

    #@1a
    .line 386
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@1d
    move-result-object v1

    #@1e
    .line 387
    .local v1, "addresses":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_0

    #@24
    .line 388
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/net/InetAddress;

    #@2a
    .line 389
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v6, v0, Ljava/net/Inet6Address;

    #@2c
    if-eqz v6, :cond_1

    #@2e
    move-object v4, v0

    #@2f
    .line 392
    check-cast v4, Ljava/net/Inet6Address;

    #@31
    .line 394
    .local v4, "ia6_addr":Ljava/net/Inet6Address;
    invoke-direct {p0, v4}, Ljava/net/Inet6Address;->differentLocalAddressTypes(Ljava/net/Inet6Address;)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_1

    #@37
    .line 399
    iget v6, v4, Ljava/net/Inet6Address;->scope_id:I

    #@39
    return v6

    #@3a
    .line 380
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/Enumeration;
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v4    # "ia6_addr":Ljava/net/Inet6Address;
    .end local v5    # "ifc":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    #@3b
    .line 381
    .local v2, "e":Ljava/net/SocketException;
    new-instance v6, Ljava/net/UnknownHostException;

    #@3d
    const-string/jumbo v7, "could not enumerate local network interfaces"

    #@40
    invoke-direct {v6, v7}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@43
    throw v6

    #@44
    .line 403
    .end local v2    # "e":Ljava/net/SocketException;
    .restart local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    new-instance v6, Ljava/net/UnknownHostException;

    #@46
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v8, "No matching address found for interface : "

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-direct {v6, v7}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v6
.end method

.method private deriveNumericScope(Ljava/net/NetworkInterface;)I
    .locals 5
    .param p1, "ifc"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@3
    move-result-object v1

    #@4
    .line 359
    .local v1, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 360
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/net/InetAddress;

    #@10
    .line 361
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet6Address;

    #@12
    if-eqz v3, :cond_0

    #@14
    move-object v2, v0

    #@15
    .line 364
    check-cast v2, Ljava/net/Inet6Address;

    #@17
    .line 366
    .local v2, "ia6_addr":Ljava/net/Inet6Address;
    invoke-direct {p0, v2}, Ljava/net/Inet6Address;->differentLocalAddressTypes(Ljava/net/Inet6Address;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 371
    iget v3, v2, Ljava/net/Inet6Address;->scope_id:I

    #@1f
    return v3

    #@20
    .line 373
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "ia6_addr":Ljava/net/Inet6Address;
    :cond_1
    new-instance v3, Ljava/net/UnknownHostException;

    #@22
    const-string/jumbo v4, "no scope_id found"

    #@25
    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3
.end method

.method private differentLocalAddressTypes(Ljava/net/Inet6Address;)Z
    .locals 2
    .param p1, "other"    # Ljava/net/Inet6Address;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 348
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 351
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 354
    :cond_1
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 349
    :cond_2
    return v1

    #@1c
    .line 352
    :cond_3
    return v1
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "scope_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 302
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    const/16 v1, 0x5b

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v0

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    const/16 v1, 0x5d

    #@1d
    if-ne v0, v1, :cond_0

    #@1f
    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@22
    move-result v0

    #@23
    add-int/lit8 v0, v0, -0x1

    #@25
    const/4 v1, 0x1

    #@26
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    .line 307
    :cond_0
    if-eqz p1, :cond_1

    #@2c
    .line 308
    array-length v0, p1

    #@2d
    const/16 v1, 0x10

    #@2f
    if-ne v0, v1, :cond_1

    #@31
    .line 309
    new-instance v0, Ljava/net/Inet6Address;

    #@33
    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BI)V

    #@36
    return-object v0

    #@37
    .line 312
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    #@39
    const-string/jumbo v1, "addr is of illegal length"

    #@3c
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # [B
    .param p2, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 271
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    const/16 v1, 0x5b

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v0

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    const/16 v1, 0x5d

    #@1d
    if-ne v0, v1, :cond_0

    #@1f
    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@22
    move-result v0

    #@23
    add-int/lit8 v0, v0, -0x1

    #@25
    const/4 v1, 0x1

    #@26
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    .line 276
    :cond_0
    if-eqz p1, :cond_1

    #@2c
    .line 277
    array-length v0, p1

    #@2d
    const/16 v1, 0x10

    #@2f
    if-ne v0, v1, :cond_1

    #@31
    .line 278
    new-instance v0, Ljava/net/Inet6Address;

    #@33
    invoke-direct {v0, p0, p1, p2}, Ljava/net/Inet6Address;-><init>(Ljava/lang/String;[BLjava/net/NetworkInterface;)V

    #@36
    return-object v0

    #@37
    .line 281
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    #@39
    const-string/jumbo v1, "addr is of illegal length"

    #@3c
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
.end method

.method private initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    .locals 3
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 328
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@4
    move-result-object v0

    #@5
    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@7
    .line 329
    array-length v0, p2

    #@8
    const/16 v1, 0x10

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 330
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@f
    move-result-object v0

    #@10
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    #@12
    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    #@14
    .line 331
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [B

    #@1a
    iput-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@1c
    .line 333
    :cond_0
    if-eqz p3, :cond_1

    #@1e
    .line 334
    iput-object p3, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@20
    .line 335
    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@22
    .line 336
    invoke-direct {p0, p3}, Ljava/net/Inet6Address;->deriveNumericScope(Ljava/net/NetworkInterface;)I

    #@25
    move-result v0

    #@26
    iput v0, p0, Ljava/net/Inet6Address;->scope_id:I

    #@28
    .line 337
    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@2a
    .line 327
    :cond_1
    return-void
.end method

.method private initstr(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    :try_start_0
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@3
    move-result-object v1

    #@4
    .line 318
    .local v1, "nif":Ljava/net/NetworkInterface;
    if-nez v1, :cond_0

    #@6
    .line 319
    new-instance v2, Ljava/net/UnknownHostException;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "no such interface "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 322
    .end local v1    # "nif":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    #@21
    .line 323
    .local v0, "e":Ljava/net/SocketException;
    new-instance v2, Ljava/net/UnknownHostException;

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "SocketException thrown"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 321
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "nif":Ljava/net/NetworkInterface;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Ljava/net/Inet6Address;->initif(Ljava/lang/String;[BLjava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    #@3e
    .line 315
    return-void
.end method

.method static numericToTextFormat([B)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # [B

    #@0
    .prologue
    .line 751
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    const/16 v2, 0x27

    #@4
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 752
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    #@a
    if-ge v0, v2, :cond_1

    #@c
    .line 753
    shl-int/lit8 v2, v0, 0x1

    #@e
    aget-byte v2, p0, v2

    #@10
    shl-int/lit8 v2, v2, 0x8

    #@12
    const v3, 0xff00

    #@15
    and-int/2addr v2, v3

    #@16
    .line 754
    shl-int/lit8 v3, v0, 0x1

    #@18
    add-int/lit8 v3, v3, 0x1

    #@1a
    aget-byte v3, p0, v3

    #@1c
    and-int/lit16 v3, v3, 0xff

    #@1e
    .line 753
    or-int/2addr v2, v3

    #@1f
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    .line 756
    const/4 v2, 0x7

    #@27
    if-ge v0, v2, :cond_0

    #@29
    .line 757
    const-string/jumbo v2, ":"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 752
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 760
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 413
    iput-object v3, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@4
    .line 414
    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@6
    .line 416
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v2

    #@e
    const-class v3, Ljava/lang/Class;

    #@10
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@13
    move-result-object v3

    #@14
    if-eq v2, v3, :cond_0

    #@16
    .line 417
    new-instance v2, Ljava/lang/SecurityException;

    #@18
    const-string/jumbo v3, "invalid address type"

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    .line 420
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@22
    .line 422
    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@24
    if-eqz v2, :cond_1

    #@26
    const-string/jumbo v2, ""

    #@29
    iget-object v3, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 445
    :cond_1
    :goto_0
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@33
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, [B

    #@39
    iput-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@3b
    .line 448
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@3d
    array-length v2, v2

    #@3e
    const/16 v3, 0x10

    #@40
    if-eq v2, v3, :cond_4

    #@42
    .line 449
    new-instance v2, Ljava/io/InvalidObjectException;

    #@44
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v4, "invalid address length: "

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 450
    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@52
    array-length v4, v4

    #@53
    .line 449
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v2

    #@5f
    .line 424
    :cond_2
    :try_start_0
    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@61
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@64
    move-result-object v2

    #@65
    iput-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@67
    .line 425
    iget-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@69
    if-nez v2, :cond_3

    #@6b
    .line 428
    const/4 v2, 0x0

    #@6c
    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@6e
    .line 429
    const/4 v2, 0x0

    #@6f
    iput-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@71
    .line 430
    const/4 v2, 0x0

    #@72
    iput v2, p0, Ljava/net/Inet6Address;->scope_id:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    goto :goto_0

    #@75
    .line 440
    :catch_0
    move-exception v0

    #@76
    .local v0, "e":Ljava/net/SocketException;
    goto :goto_0

    #@77
    .line 433
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@79
    invoke-direct {p0, v2}, Ljava/net/Inet6Address;->deriveNumericScope(Ljava/net/NetworkInterface;)I

    #@7c
    move-result v2

    #@7d
    iput v2, p0, Ljava/net/Inet6Address;->scope_id:I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    #@7f
    goto :goto_0

    #@80
    .line 434
    :catch_1
    move-exception v1

    #@81
    .local v1, "e":Ljava/net/UnknownHostException;
    goto :goto_0

    #@82
    .line 453
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_4
    invoke-virtual {p0}, Ljava/net/Inet6Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getFamily()I

    #@89
    move-result v2

    #@8a
    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    #@8c
    if-eq v2, v3, :cond_5

    #@8e
    .line 454
    new-instance v2, Ljava/io/InvalidObjectException;

    #@90
    const-string/jumbo v3, "invalid address family type"

    #@93
    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@96
    throw v2

    #@97
    .line 412
    :cond_5
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 776
    :try_start_0
    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 777
    iget-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@7
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@d
    .line 779
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 774
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 705
    if-eqz p1, :cond_0

    #@3
    .line 706
    instance-of v2, p1, Ljava/net/Inet6Address;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v1, p1

    #@8
    .line 709
    check-cast v1, Ljava/net/Inet6Address;

    #@a
    .line 711
    .local v1, "inetAddr":Ljava/net/Inet6Address;
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 712
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@11
    aget-byte v2, v2, v0

    #@13
    iget-object v3, v1, Ljava/net/Inet6Address;->ipaddress:[B

    #@15
    aget-byte v3, v3, v0

    #@17
    if-eq v2, v3, :cond_1

    #@19
    .line 713
    return v4

    #@1a
    .line 707
    .end local v0    # "i":I
    .end local v1    # "inetAddr":Ljava/net/Inet6Address;
    :cond_0
    return v4

    #@1b
    .line 711
    .restart local v0    # "i":I
    .restart local v1    # "inetAddr":Ljava/net/Inet6Address;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 716
    :cond_2
    const/4 v2, 0x1

    #@1f
    return v2
.end method

.method public getAddress()[B
    .locals 1

    #@0
    .prologue
    .line 609
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 655
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    sget v1, Landroid/system/OsConstants;->NI_NUMERICHOST:I

    #@4
    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getScopeId()I
    .locals 1

    #@0
    .prologue
    .line 620
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    #@2
    return v0
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .locals 1

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Ljava/net/Inet6Address;->scope_ifname:Ljava/net/NetworkInterface;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x10

    #@2
    .line 666
    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    if-eqz v4, :cond_2

    #@6
    .line 668
    const/4 v1, 0x0

    #@7
    .line 669
    .local v1, "hash":I
    const/4 v2, 0x0

    #@8
    .line 670
    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    #@a
    .line 671
    const/4 v3, 0x0

    #@b
    .line 672
    .local v3, "j":I
    const/4 v0, 0x0

    #@c
    .line 673
    .local v0, "component":I
    :goto_1
    const/4 v4, 0x4

    #@d
    if-ge v3, v4, :cond_0

    #@f
    if-ge v2, v6, :cond_0

    #@11
    .line 674
    shl-int/lit8 v4, v0, 0x8

    #@13
    iget-object v5, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@15
    aget-byte v5, v5, v2

    #@17
    add-int v0, v4, v5

    #@19
    .line 675
    add-int/lit8 v3, v3, 0x1

    #@1b
    .line 676
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 678
    :cond_0
    add-int/2addr v1, v0

    #@1f
    goto :goto_0

    #@20
    .line 680
    .end local v0    # "component":I
    .end local v3    # "j":I
    :cond_1
    return v1

    #@21
    .line 683
    .end local v1    # "hash":I
    .end local v2    # "i":I
    :cond_2
    const/4 v4, 0x0

    #@22
    return v4
.end method

.method public isAnyLocalAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 480
    const/4 v1, 0x0

    #@2
    .line 481
    .local v1, "test":B
    const/4 v0, 0x0

    #@3
    .end local v1    # "test":B
    .local v0, "i":I
    :goto_0
    const/16 v3, 0x10

    #@5
    if-ge v0, v3, :cond_0

    #@7
    .line 482
    iget-object v3, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@9
    aget-byte v3, v3, v0

    #@b
    or-int/2addr v3, v1

    #@c
    int-to-byte v1, v3

    #@d
    .line 481
    .local v1, "test":B
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 484
    .end local v1    # "test":B
    :cond_0
    if-nez v1, :cond_1

    #@12
    const/4 v2, 0x1

    #@13
    :cond_1
    return v2
.end method

.method public isIPv4CompatibleAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 728
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@a
    aget-byte v0, v0, v3

    #@c
    if-nez v0, :cond_0

    #@e
    .line 729
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@10
    const/4 v1, 0x2

    #@11
    aget-byte v0, v0, v1

    #@13
    if-nez v0, :cond_0

    #@15
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@17
    const/4 v1, 0x3

    #@18
    aget-byte v0, v0, v1

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 730
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@1e
    const/4 v1, 0x4

    #@1f
    aget-byte v0, v0, v1

    #@21
    if-nez v0, :cond_0

    #@23
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@25
    const/4 v1, 0x5

    #@26
    aget-byte v0, v0, v1

    #@28
    if-nez v0, :cond_0

    #@2a
    .line 731
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@2c
    const/4 v1, 0x6

    #@2d
    aget-byte v0, v0, v1

    #@2f
    if-nez v0, :cond_0

    #@31
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@33
    const/4 v1, 0x7

    #@34
    aget-byte v0, v0, v1

    #@36
    if-nez v0, :cond_0

    #@38
    .line 732
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@3a
    const/16 v1, 0x8

    #@3c
    aget-byte v0, v0, v1

    #@3e
    if-nez v0, :cond_0

    #@40
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@42
    const/16 v1, 0x9

    #@44
    aget-byte v0, v0, v1

    #@46
    if-nez v0, :cond_0

    #@48
    .line 733
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4a
    const/16 v1, 0xa

    #@4c
    aget-byte v0, v0, v1

    #@4e
    if-nez v0, :cond_0

    #@50
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@52
    const/16 v1, 0xb

    #@54
    aget-byte v0, v0, v1

    #@56
    if-nez v0, :cond_0

    #@58
    .line 734
    return v3

    #@59
    .line 736
    :cond_0
    return v2
.end method

.method public isLinkLocalAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 512
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xfe

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 513
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit16 v2, v2, 0xc0

    #@12
    const/16 v3, 0x80

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 512
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    .line 513
    goto :goto_0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 512
    goto :goto_0
.end method

.method public isLoopbackAddress()Z
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xf

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 496
    const/4 v1, 0x0

    #@5
    .line 497
    .local v1, "test":B
    const/4 v0, 0x0

    #@6
    .end local v1    # "test":B
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    #@8
    .line 498
    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@a
    aget-byte v4, v4, v0

    #@c
    or-int/2addr v4, v1

    #@d
    int-to-byte v1, v4

    #@e
    .line 497
    .local v1, "test":B
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 500
    .end local v1    # "test":B
    :cond_0
    if-nez v1, :cond_1

    #@13
    iget-object v4, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@15
    aget-byte v4, v4, v5

    #@17
    if-ne v4, v2, :cond_1

    #@19
    :goto_1
    return v2

    #@1a
    :cond_1
    move v2, v3

    #@1b
    goto :goto_1
.end method

.method public isMCGlobal()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 539
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 540
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit8 v2, v2, 0xf

    #@12
    const/16 v3, 0xe

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 539
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    .line 540
    goto :goto_0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 539
    goto :goto_0
.end method

.method public isMCLinkLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 567
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 568
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit8 v2, v2, 0xf

    #@12
    const/4 v3, 0x2

    #@13
    if-ne v2, v3, :cond_0

    #@15
    .line 567
    :goto_0
    return v0

    #@16
    :cond_0
    move v0, v1

    #@17
    .line 568
    goto :goto_0

    #@18
    :cond_1
    move v0, v1

    #@19
    .line 567
    goto :goto_0
.end method

.method public isMCNodeLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 553
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 554
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit8 v2, v2, 0xf

    #@12
    if-ne v2, v0, :cond_0

    #@14
    .line 553
    :goto_0
    return v0

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 554
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    .line 553
    goto :goto_0
.end method

.method public isMCOrgLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 596
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 597
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit8 v2, v2, 0xf

    #@12
    const/16 v3, 0x8

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 596
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    .line 597
    goto :goto_0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 596
    goto :goto_0
.end method

.method public isMCSiteLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 581
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 582
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit8 v2, v2, 0xf

    #@12
    const/4 v3, 0x5

    #@13
    if-ne v2, v3, :cond_0

    #@15
    .line 581
    :goto_0
    return v0

    #@16
    :cond_0
    move v0, v1

    #@17
    .line 582
    goto :goto_0

    #@18
    :cond_1
    move v0, v1

    #@19
    .line 581
    goto :goto_0
.end method

.method public isMulticastAddress()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 469
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@3
    aget-byte v1, v1, v0

    #@5
    and-int/lit16 v1, v1, 0xff

    #@7
    const/16 v2, 0xff

    #@9
    if-ne v1, v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public isSiteLocalAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 525
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xfe

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 526
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit16 v2, v2, 0xc0

    #@12
    const/16 v3, 0xc0

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 525
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    .line 526
    goto :goto_0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 525
    goto :goto_0
.end method
