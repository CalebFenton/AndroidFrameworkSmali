.class public final Ljava/net/Inet4Address;
.super Ljava/net/InetAddress;
.source "Inet4Address.java"


# static fields
.field public static final ALL:Ljava/net/InetAddress;

.field public static final ANY:Ljava/net/InetAddress;

.field static final INADDRSZ:I = 0x4

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final loopback:I = 0x7f000001

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
    .line 99
    new-instance v0, Ljava/net/Inet4Address;

    #@4
    new-array v1, v2, [B

    #@6
    fill-array-data v1, :array_0

    #@9
    invoke-direct {v0, v3, v1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    #@c
    sput-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@e
    .line 103
    new-instance v0, Ljava/net/Inet4Address;

    #@10
    new-array v1, v2, [B

    #@12
    fill-array-data v1, :array_1

    #@15
    invoke-direct {v0, v3, v1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    #@18
    .line 102
    sput-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    #@1a
    .line 107
    new-instance v0, Ljava/net/Inet4Address;

    #@1c
    const-string/jumbo v1, "localhost"

    #@1f
    new-array v2, v2, [B

    #@21
    fill-array-data v2, :array_2

    #@24
    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    #@27
    .line 106
    sput-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    #@29
    .line 90
    return-void

    #@2a
    .line 99
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@30
    .line 103
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    #@36
    .line 107
    :array_2
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    #@3
    .line 111
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@a
    .line 112
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x0

    #@f
    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    #@11
    .line 113
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@14
    move-result-object v0

    #@15
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    #@17
    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    #@19
    .line 109
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "address"    # I

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    #@3
    .line 130
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@6
    move-result-object v0

    #@7
    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@9
    .line 131
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@c
    move-result-object v0

    #@d
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    #@f
    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    #@11
    .line 132
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@14
    move-result-object v0

    #@15
    iput p2, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    #@17
    .line 129
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    #@3
    .line 117
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@6
    move-result-object v1

    #@7
    iput-object p1, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@9
    .line 118
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@c
    move-result-object v1

    #@d
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    #@f
    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    #@11
    .line 119
    if-eqz p2, :cond_0

    #@13
    .line 120
    array-length v1, p2

    #@14
    const/4 v2, 0x4

    #@15
    if-ne v1, v2, :cond_0

    #@17
    .line 121
    const/4 v1, 0x3

    #@18
    aget-byte v1, p2, v1

    #@1a
    and-int/lit16 v0, v1, 0xff

    #@1c
    .line 122
    .local v0, "address":I
    const/4 v1, 0x2

    #@1d
    aget-byte v1, p2, v1

    #@1f
    shl-int/lit8 v1, v1, 0x8

    #@21
    const v2, 0xff00

    #@24
    and-int/2addr v1, v2

    #@25
    or-int/2addr v0, v1

    #@26
    .line 123
    const/4 v1, 0x1

    #@27
    aget-byte v1, p2, v1

    #@29
    shl-int/lit8 v1, v1, 0x10

    #@2b
    const/high16 v2, 0xff0000

    #@2d
    and-int/2addr v1, v2

    #@2e
    or-int/2addr v0, v1

    #@2f
    .line 124
    const/4 v1, 0x0

    #@30
    aget-byte v1, p2, v1

    #@32
    shl-int/lit8 v1, v1, 0x18

    #@34
    const/high16 v2, -0x1000000

    #@36
    and-int/2addr v1, v2

    #@37
    or-int/2addr v0, v1

    #@38
    .line 125
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@3b
    move-result-object v1

    #@3c
    iput v0, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    #@3e
    .line 116
    .end local v0    # "address":I
    :cond_0
    return-void
.end method

.method static numericToTextFormat([B)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B

    #@0
    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    aget-byte v1, p0, v1

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v1, "."

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const/4 v1, 0x1

    #@16
    aget-byte v1, p0, v1

    #@18
    and-int/lit16 v1, v1, 0xff

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "."

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const/4 v1, 0x2

    #@26
    aget-byte v1, p0, v1

    #@28
    and-int/lit16 v1, v1, 0xff

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    const-string/jumbo v1, "."

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const/4 v1, 0x3

    #@36
    aget-byte v1, p0, v1

    #@38
    and-int/lit16 v1, v1, 0xff

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    return-object v0
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
    .line 145
    new-instance v0, Ljava/net/InetAddress;

    #@2
    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    #@5
    .line 146
    .local v0, "inet":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iput-object v2, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    #@13
    .line 147
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@1e
    move-result v2

    #@1f
    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    #@21
    .line 155
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@24
    move-result-object v1

    #@25
    const/4 v2, 0x2

    #@26
    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    #@28
    .line 157
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 364
    if-eqz p1, :cond_0

    #@3
    instance-of v1, p1, Ljava/net/Inet4Address;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 365
    check-cast p1, Ljava/net/InetAddress;

    #@9
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@18
    move-result v2

    #@19
    if-ne v1, v2, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 364
    :cond_0
    return v0
.end method

.method public getAddress()[B
    .locals 4

    #@0
    .prologue
    .line 318
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@7
    move-result v1

    #@8
    .line 319
    .local v1, "address":I
    const/4 v2, 0x4

    #@9
    new-array v0, v2, [B

    #@b
    .line 321
    .local v0, "addr":[B
    ushr-int/lit8 v2, v1, 0x18

    #@d
    and-int/lit16 v2, v2, 0xff

    #@f
    int-to-byte v2, v2

    #@10
    const/4 v3, 0x0

    #@11
    aput-byte v2, v0, v3

    #@13
    .line 322
    ushr-int/lit8 v2, v1, 0x10

    #@15
    and-int/lit16 v2, v2, 0xff

    #@17
    int-to-byte v2, v2

    #@18
    const/4 v3, 0x1

    #@19
    aput-byte v2, v0, v3

    #@1b
    .line 323
    ushr-int/lit8 v2, v1, 0x8

    #@1d
    and-int/lit16 v2, v2, 0xff

    #@1f
    int-to-byte v2, v2

    #@20
    const/4 v3, 0x2

    #@21
    aput-byte v2, v0, v3

    #@23
    .line 324
    and-int/lit16 v2, v1, 0xff

    #@25
    int-to-byte v2, v2

    #@26
    const/4 v3, 0x3

    #@27
    aput-byte v2, v0, v3

    #@29
    .line 325
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 335
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/net/Inet4Address;->numericToTextFormat([B)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isAnyLocalAddress()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 179
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public isLinkLocalAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 208
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@8
    move-result v0

    #@9
    .line 209
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    #@b
    and-int/lit16 v2, v2, 0xff

    #@d
    const/16 v3, 0xa9

    #@f
    if-ne v2, v3, :cond_0

    #@11
    .line 210
    ushr-int/lit8 v2, v0, 0x10

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    const/16 v3, 0xfe

    #@17
    if-ne v2, v3, :cond_0

    #@19
    const/4 v1, 0x1

    #@1a
    .line 209
    :cond_0
    return v1
.end method

.method public isLoopbackAddress()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 192
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    #@4
    move-result-object v0

    #@5
    .line 193
    .local v0, "byteAddr":[B
    aget-byte v2, v0, v1

    #@7
    const/16 v3, 0x7f

    #@9
    if-ne v2, v3, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    return v1
.end method

.method public isMCGlobal()Z
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xe0

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 243
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    #@7
    move-result-object v0

    #@8
    .line 244
    .local v0, "byteAddr":[B
    aget-byte v3, v0, v2

    #@a
    and-int/lit16 v3, v3, 0xff

    #@c
    if-lt v3, v5, :cond_2

    #@e
    aget-byte v3, v0, v2

    #@10
    and-int/lit16 v3, v3, 0xff

    #@12
    const/16 v4, 0xee

    #@14
    if-gt v3, v4, :cond_2

    #@16
    .line 245
    aget-byte v3, v0, v2

    #@18
    and-int/lit16 v3, v3, 0xff

    #@1a
    if-ne v3, v5, :cond_0

    #@1c
    aget-byte v3, v0, v1

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 244
    :cond_0
    :goto_0
    return v1

    #@21
    .line 246
    :cond_1
    const/4 v3, 0x2

    #@22
    aget-byte v3, v0, v3

    #@24
    if-nez v3, :cond_0

    #@26
    move v1, v2

    #@27
    goto :goto_0

    #@28
    :cond_2
    move v1, v2

    #@29
    .line 244
    goto :goto_0
.end method

.method public isMCLinkLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 272
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@8
    move-result v0

    #@9
    .line 273
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    #@b
    and-int/lit16 v2, v2, 0xff

    #@d
    const/16 v3, 0xe0

    #@f
    if-ne v2, v3, :cond_0

    #@11
    .line 274
    ushr-int/lit8 v2, v0, 0x10

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    if-nez v2, :cond_0

    #@17
    .line 275
    ushr-int/lit8 v2, v0, 0x8

    #@19
    and-int/lit16 v2, v2, 0xff

    #@1b
    if-nez v2, :cond_0

    #@1d
    const/4 v1, 0x1

    #@1e
    .line 273
    :cond_0
    return v1
.end method

.method public isMCNodeLocal()Z
    .locals 1

    #@0
    .prologue
    .line 259
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 304
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@8
    move-result v0

    #@9
    .line 305
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    #@b
    and-int/lit16 v2, v2, 0xff

    #@d
    const/16 v3, 0xef

    #@f
    if-ne v2, v3, :cond_0

    #@11
    .line 306
    ushr-int/lit8 v2, v0, 0x10

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    const/16 v3, 0xc0

    #@17
    if-lt v2, v3, :cond_0

    #@19
    .line 307
    ushr-int/lit8 v2, v0, 0x10

    #@1b
    and-int/lit16 v2, v2, 0xff

    #@1d
    const/16 v3, 0xc3

    #@1f
    if-gt v2, v3, :cond_0

    #@21
    const/4 v1, 0x1

    #@22
    .line 305
    :cond_0
    return v1
.end method

.method public isMCSiteLocal()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 288
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@8
    move-result v0

    #@9
    .line 289
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    #@b
    and-int/lit16 v2, v2, 0xff

    #@d
    const/16 v3, 0xef

    #@f
    if-ne v2, v3, :cond_0

    #@11
    .line 290
    ushr-int/lit8 v2, v0, 0x10

    #@13
    and-int/lit16 v2, v2, 0xff

    #@15
    const/16 v3, 0xff

    #@17
    if-ne v2, v3, :cond_0

    #@19
    const/4 v1, 0x1

    #@1a
    .line 289
    :cond_0
    return v1
.end method

.method public isMulticastAddress()Z
    .locals 2

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@7
    move-result v0

    #@8
    const/high16 v1, -0x10000000

    #@a
    and-int/2addr v0, v1

    #@b
    const/high16 v1, -0x20000000

    #@d
    if-ne v0, v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public isSiteLocalAddress()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 225
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    #@9
    move-result v0

    #@a
    .line 226
    .local v0, "address":I
    ushr-int/lit8 v3, v0, 0x18

    #@c
    and-int/lit16 v3, v3, 0xff

    #@e
    const/16 v4, 0xa

    #@10
    if-eq v3, v4, :cond_0

    #@12
    .line 227
    ushr-int/lit8 v3, v0, 0x18

    #@14
    and-int/lit16 v3, v3, 0xff

    #@16
    const/16 v4, 0xac

    #@18
    if-ne v3, v4, :cond_1

    #@1a
    .line 228
    ushr-int/lit8 v3, v0, 0x10

    #@1c
    and-int/lit16 v3, v3, 0xf0

    #@1e
    const/16 v4, 0x10

    #@20
    if-ne v3, v4, :cond_1

    #@22
    .line 226
    :cond_0
    :goto_0
    return v1

    #@23
    .line 229
    :cond_1
    ushr-int/lit8 v3, v0, 0x18

    #@25
    and-int/lit16 v3, v3, 0xff

    #@27
    const/16 v4, 0xc0

    #@29
    if-ne v3, v4, :cond_2

    #@2b
    .line 230
    ushr-int/lit8 v3, v0, 0x10

    #@2d
    and-int/lit16 v3, v3, 0xff

    #@2f
    const/16 v4, 0xa8

    #@31
    if-eq v3, v4, :cond_0

    #@33
    move v1, v2

    #@34
    goto :goto_0

    #@35
    :cond_2
    move v1, v2

    #@36
    .line 229
    goto :goto_0
.end method
