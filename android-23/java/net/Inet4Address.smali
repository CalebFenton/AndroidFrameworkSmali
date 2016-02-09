.class public final Ljava/net/Inet4Address;
.super Ljava/net/InetAddress;
.source "Inet4Address.java"


# static fields
.field public static final ALL:Ljava/net/InetAddress;

.field public static final ANY:Ljava/net/InetAddress;

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x4

    #@2
    .line 36
    new-instance v0, Ljava/net/Inet4Address;

    #@4
    new-array v1, v2, [B

    #@6
    fill-array-data v1, :array_0

    #@9
    invoke-direct {v0, v1, v3}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    #@c
    .line 35
    sput-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@e
    .line 42
    new-instance v0, Ljava/net/Inet4Address;

    #@10
    new-array v1, v2, [B

    #@12
    fill-array-data v1, :array_1

    #@15
    invoke-direct {v0, v1, v3}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    #@18
    .line 41
    sput-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    #@1a
    .line 49
    new-instance v0, Ljava/net/Inet4Address;

    #@1c
    new-array v1, v2, [B

    #@1e
    fill-array-data v1, :array_2

    #@21
    const-string/jumbo v2, "localhost"

    #@24
    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    #@27
    .line 48
    sput-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    #@29
    .line 28
    return-void

    #@2a
    .line 36
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@30
    .line 42
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    #@36
    .line 49
    :array_2
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "ipaddress"    # [B
    .param p2, "hostName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    #@2
    invoke-direct {p0, v0, p1, p2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    #@5
    .line 51
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/net/Inet4Address;

    #@2
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@4
    iget-object v2, p0, Ljava/net/Inet4Address;->hostName:Ljava/lang/String;

    #@6
    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public isAnyLocalAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 56
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    if-nez v2, :cond_0

    #@8
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@a
    aget-byte v2, v2, v0

    #@c
    if-nez v2, :cond_0

    #@e
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@10
    const/4 v3, 0x2

    #@11
    aget-byte v2, v2, v3

    #@13
    if-nez v2, :cond_0

    #@15
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@17
    const/4 v3, 0x3

    #@18
    aget-byte v2, v2, v3

    #@1a
    if-nez v2, :cond_0

    #@1c
    :goto_0
    return v0

    #@1d
    :cond_0
    move v0, v1

    #@1e
    goto :goto_0
.end method

.method public isLinkLocalAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 61
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xa9

    #@a
    if-ne v2, v3, :cond_0

    #@c
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit16 v2, v2, 0xff

    #@12
    const/16 v3, 0xfe

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
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 65
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@3
    aget-byte v1, v1, v0

    #@5
    and-int/lit16 v1, v1, 0xff

    #@7
    const/16 v2, 0x7f

    #@9
    if-ne v1, v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public isMCGlobal()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 70
    invoke-virtual {p0}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 71
    return v3

    #@8
    .line 74
    :cond_0
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@a
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@c
    invoke-static {v1, v3, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@f
    move-result v0

    #@10
    .line 81
    .local v0, "address":I
    ushr-int/lit8 v1, v0, 0x8

    #@12
    const v2, 0xe00001

    #@15
    if-ge v1, v2, :cond_1

    #@17
    .line 82
    return v3

    #@18
    .line 90
    :cond_1
    ushr-int/lit8 v1, v0, 0x18

    #@1a
    const/16 v2, 0xee

    #@1c
    if-le v1, v2, :cond_2

    #@1e
    .line 91
    return v3

    #@1f
    .line 94
    :cond_2
    const/4 v1, 0x1

    #@20
    return v1
.end method

.method public isMCLinkLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 98
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xe0

    #@a
    if-ne v2, v3, :cond_0

    #@c
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    if-nez v2, :cond_0

    #@12
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@14
    const/4 v3, 0x2

    #@15
    aget-byte v2, v2, v3

    #@17
    if-nez v2, :cond_0

    #@19
    :goto_0
    return v0

    #@1a
    :cond_0
    move v0, v1

    #@1b
    goto :goto_0
.end method

.method public isMCNodeLocal()Z
    .locals 1

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 106
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xef

    #@a
    if-ne v2, v3, :cond_0

    #@c
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit16 v2, v2, 0xfc

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

.method public isMCSiteLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 110
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@4
    aget-byte v2, v2, v1

    #@6
    and-int/lit16 v2, v2, 0xff

    #@8
    const/16 v3, 0xef

    #@a
    if-ne v2, v3, :cond_0

    #@c
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@e
    aget-byte v2, v2, v0

    #@10
    and-int/lit16 v2, v2, 0xff

    #@12
    const/16 v3, 0xff

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

.method public isMulticastAddress()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 114
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@3
    aget-byte v1, v1, v0

    #@5
    and-int/lit16 v1, v1, 0xf0

    #@7
    const/16 v2, 0xe0

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
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 118
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@4
    aget-byte v0, v0, v3

    #@6
    and-int/lit16 v0, v0, 0xff

    #@8
    const/16 v1, 0xa

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 119
    return v2

    #@d
    .line 120
    :cond_0
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@f
    aget-byte v0, v0, v3

    #@11
    and-int/lit16 v0, v0, 0xff

    #@13
    const/16 v1, 0xac

    #@15
    if-ne v0, v1, :cond_1

    #@17
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@19
    aget-byte v0, v0, v2

    #@1b
    and-int/lit16 v0, v0, 0xf0

    #@1d
    const/16 v1, 0x10

    #@1f
    if-ne v0, v1, :cond_1

    #@21
    .line 121
    return v2

    #@22
    .line 122
    :cond_1
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@24
    aget-byte v0, v0, v3

    #@26
    and-int/lit16 v0, v0, 0xff

    #@28
    const/16 v1, 0xc0

    #@2a
    if-ne v0, v1, :cond_2

    #@2c
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@2e
    aget-byte v0, v0, v2

    #@30
    and-int/lit16 v0, v0, 0xff

    #@32
    const/16 v1, 0xa8

    #@34
    if-ne v0, v1, :cond_2

    #@36
    .line 123
    return v2

    #@37
    .line 125
    :cond_2
    return v3
.end method
