.class public final Ljava/net/Inet6Address;
.super Ljava/net/InetAddress;
.source "Inet6Address.java"


# static fields
.field public static final ANY:Ljava/net/InetAddress;

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field private ifname:Ljava/lang/String;

.field private scope_id:I

.field private scope_id_set:Z

.field private scope_ifname_set:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    const/4 v4, 0x0

    #@3
    .line 39
    new-instance v0, Ljava/net/Inet6Address;

    #@5
    new-array v1, v3, [B

    #@7
    fill-array-data v1, :array_0

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v0, v1, v2, v4}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    #@e
    .line 38
    sput-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@10
    .line 45
    new-instance v0, Ljava/net/Inet6Address;

    #@12
    new-array v1, v3, [B

    #@14
    fill-array-data v1, :array_1

    #@17
    .line 46
    const-string/jumbo v2, "ip6-localhost"

    #@1a
    .line 45
    invoke-direct {v0, v1, v2, v4}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    #@1d
    .line 44
    sput-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    #@1f
    .line 245
    const/4 v0, 0x5

    #@20
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@22
    .line 246
    new-instance v1, Ljava/io/ObjectStreamField;

    #@24
    const-string/jumbo v2, "ipaddress"

    #@27
    const-class v3, [B

    #@29
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2c
    aput-object v1, v0, v4

    #@2e
    .line 247
    new-instance v1, Ljava/io/ObjectStreamField;

    #@30
    const-string/jumbo v2, "scope_id"

    #@33
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@35
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@38
    const/4 v2, 0x1

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 248
    new-instance v1, Ljava/io/ObjectStreamField;

    #@3d
    const-string/jumbo v2, "scope_id_set"

    #@40
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@42
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@45
    const/4 v2, 0x2

    #@46
    aput-object v1, v0, v2

    #@48
    .line 249
    new-instance v1, Ljava/io/ObjectStreamField;

    #@4a
    const-string/jumbo v2, "scope_ifname_set"

    #@4d
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@4f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@52
    const/4 v2, 0x3

    #@53
    aput-object v1, v0, v2

    #@55
    .line 250
    new-instance v1, Ljava/io/ObjectStreamField;

    #@57
    const-string/jumbo v2, "ifname"

    #@5a
    const-class v3, Ljava/lang/String;

    #@5c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@5f
    const/4 v2, 0x4

    #@60
    aput-object v1, v0, v2

    #@62
    .line 245
    sput-object v0, Ljava/net/Inet6Address;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@64
    .line 31
    return-void

    #@65
    .line 39
    nop

    #@66
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

    #@72
    .line 45
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

.method constructor <init>([BLjava/lang/String;I)V
    .locals 2
    .param p1, "ipaddress"    # [B
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "scope_id"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 66
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    #@3
    invoke-direct {p0, v1, p1, p2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    #@6
    .line 67
    iput p3, p0, Ljava/net/Inet6Address;->scope_id:I

    #@8
    .line 68
    if-eqz p3, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@d
    .line 65
    return-void
.end method

.method private compareLocalType(Ljava/net/Inet6Address;)Z
    .locals 2
    .param p1, "ia"    # Ljava/net/Inet6Address;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 160
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 161
    return v1

    #@e
    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 164
    return v1

    #@1b
    .line 166
    :cond_1
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2

    #@21
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 169
    :cond_2
    const/4 v0, 0x0

    #@28
    return v0

    #@29
    .line 167
    :cond_3
    return v1
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .locals 3
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
    .line 87
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    const/16 v1, 0x10

    #@5
    if-eq v0, v1, :cond_1

    #@7
    .line 88
    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Not an IPv6 address: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 90
    :cond_1
    if-gez p2, :cond_2

    #@27
    .line 91
    const/4 p2, 0x0

    #@28
    .line 94
    :cond_2
    new-instance v0, Ljava/net/Inet6Address;

    #@2a
    invoke-direct {v0, p1, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    #@2d
    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 118
    const/4 v5, 0x0

    #@2
    invoke-static {p0, p1, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    #@5
    move-result-object v0

    #@6
    .line 121
    .local v0, "address":Ljava/net/Inet6Address;
    if-nez p2, :cond_0

    #@8
    .line 122
    return-object v0

    #@9
    .line 127
    :cond_0
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@c
    move-result-object v1

    #@d
    .line 128
    .local v1, "addressList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_2

    #@13
    .line 129
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/net/InetAddress;

    #@19
    .line 130
    .local v2, "ia":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    #@1c
    move-result-object v5

    #@1d
    array-length v5, v5

    #@1e
    const/16 v6, 0x10

    #@20
    if-ne v5, v6, :cond_1

    #@22
    move-object v4, v2

    #@23
    .line 131
    check-cast v4, Ljava/net/Inet6Address;

    #@25
    .line 132
    .local v4, "v6ia":Ljava/net/Inet6Address;
    invoke-direct {v4, v0}, Ljava/net/Inet6Address;->compareLocalType(Ljava/net/Inet6Address;)Z

    #@28
    move-result v3

    #@29
    .line 133
    .local v3, "isSameType":Z
    if-eqz v3, :cond_1

    #@2b
    .line 134
    iput-boolean v7, v0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@2d
    .line 135
    iget v5, v4, Ljava/net/Inet6Address;->scope_id:I

    #@2f
    iput v5, v0, Ljava/net/Inet6Address;->scope_id:I

    #@31
    .line 136
    iput-boolean v7, v0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@33
    .line 137
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    iput-object v5, v0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@39
    .line 144
    .end local v2    # "ia":Ljava/net/InetAddress;
    .end local v3    # "isSameType":Z
    .end local v4    # "v6ia":Ljava/net/Inet6Address;
    :cond_2
    iget-boolean v5, v0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@3b
    if-nez v5, :cond_3

    #@3d
    .line 145
    new-instance v5, Ljava/net/UnknownHostException;

    #@3f
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v7, "Scope id not found for address: "

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v5

    #@5b
    .line 147
    :cond_3
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
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
    .line 269
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@5
    move-result-object v0

    #@6
    .line 270
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "ipaddress"

    #@9
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [B

    #@f
    iput-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@11
    .line 271
    const-string/jumbo v1, "scope_id"

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@17
    move-result v1

    #@18
    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    #@1a
    .line 272
    const-string/jumbo v1, "scope_id_set"

    #@1d
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@20
    move-result v1

    #@21
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@23
    .line 273
    const-string/jumbo v1, "ifname"

    #@26
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Ljava/lang/String;

    #@2c
    iput-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@2e
    .line 274
    const-string/jumbo v1, "scope_ifname_set"

    #@31
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@34
    move-result v1

    #@35
    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@37
    .line 268
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 254
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@4
    move-result-object v0

    #@5
    .line 255
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 256
    const-string/jumbo v1, "ipaddress"

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@f
    .line 261
    :goto_0
    const-string/jumbo v1, "scope_id"

    #@12
    iget v2, p0, Ljava/net/Inet6Address;->scope_id:I

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@17
    .line 262
    const-string/jumbo v1, "scope_id_set"

    #@1a
    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@1f
    .line 263
    const-string/jumbo v1, "scope_ifname_set"

    #@22
    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@27
    .line 264
    const-string/jumbo v1, "ifname"

    #@2a
    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2f
    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@32
    .line 253
    return-void

    #@33
    .line 258
    :cond_0
    const-string/jumbo v1, "ipaddress"

    #@36
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@3b
    goto :goto_0
.end method


# virtual methods
.method public getScopeId()I
    .locals 1

    #@0
    .prologue
    .line 230
    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 239
    :try_start_0
    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@7
    if-eqz v2, :cond_0

    #@9
    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@b
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1

    #@10
    .line 240
    :catch_0
    move-exception v0

    #@11
    .line 241
    .local v0, "ex":Ljava/net/SocketException;
    return-object v1
.end method

.method public isAnyLocalAddress()Z
    .locals 2

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@2
    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@4
    iget-object v1, v1, Ljava/net/InetAddress;->ipaddress:[B

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isIPv4CompatibleAddress()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 182
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 183
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@8
    aget-byte v1, v1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 184
    return v2

    #@d
    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 187
    :cond_1
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method public isLinkLocalAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 191
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xfe

    #@a
    if-ne v2, v3, :cond_0

    #@c
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
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    goto :goto_0
.end method

.method public isLoopbackAddress()Z
    .locals 2

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@2
    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    #@4
    iget-object v1, v1, Ljava/net/InetAddress;->ipaddress:[B

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isMCGlobal()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 199
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_0

    #@c
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
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
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
    .line 203
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_0

    #@c
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
    :goto_0
    return v0

    #@16
    :cond_0
    move v0, v1

    #@17
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
    .line 207
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_0

    #@c
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit8 v2, v2, 0xf

    #@12
    if-ne v2, v0, :cond_0

    #@14
    :goto_0
    return v0

    #@15
    :cond_0
    move v0, v1

    #@16
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
    .line 211
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_0

    #@c
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
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
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
    .line 215
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xff

    #@a
    if-ne v2, v3, :cond_0

    #@c
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
    :goto_0
    return v0

    #@16
    :cond_0
    move v0, v1

    #@17
    goto :goto_0
.end method

.method public isMulticastAddress()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 219
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
    .line 223
    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xfe

    #@a
    if-ne v2, v3, :cond_0

    #@c
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
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "%"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 281
    :cond_0
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string/jumbo v1, "%"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    iget v1, p0, Ljava/net/Inet6Address;->scope_id:I

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    return-object v0

    #@46
    .line 284
    :cond_1
    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method
