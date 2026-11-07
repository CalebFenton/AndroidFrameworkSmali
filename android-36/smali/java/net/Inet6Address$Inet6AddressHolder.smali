.class Ljava/net/Inet6Address$Inet6AddressHolder;
.super Ljava/lang/Object;
.source "Inet6Address.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/Inet6Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Inet6AddressHolder"
.end annotation


# instance fields
.field greylist-max-r ipaddress:[B

.field greylist-max-r scope_id:I

.field greylist-max-r scope_id_set:Z

.field greylist-max-r scope_ifname:Ljava/net/NetworkInterface;

.field greylist-max-o scope_ifname_set:Z


# direct methods
.method private constructor blacklist <init>(Ljava/net/Inet6Address;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    .line 211
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/net/Inet6Address;Ljava/net/Inet6Address-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;Z)V
    .registers 7
    .param p2, "ipaddress"    # [B
    .param p3, "scope_id"    # I
    .param p4, "scope_id_set"    # Z
    .param p5, "ifname"    # Ljava/net/NetworkInterface;
    .param p6, "scope_ifname_set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    .line 218
    iput p3, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    .line 219
    iput-boolean p4, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    .line 220
    iput-boolean p6, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    .line 221
    iput-object p5, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    .line 222
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;ZLjava/net/Inet6Address-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Ljava/net/Inet6Address$Inet6AddressHolder;-><init>(Ljava/net/Inet6Address;[BIZLjava/net/NetworkInterface;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 297
    instance-of v0, p1, Ljava/net/Inet6Address$Inet6AddressHolder;

    if-nez v0, :cond_6

    .line 298
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/net/Inet6Address$Inet6AddressHolder;

    .line 302
    .local v0, "that":Ljava/net/Inet6Address$Inet6AddressHolder;
    iget-object v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    iget-object v2, v0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 306
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    if-eqz v0, :cond_21

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "hash":I
    const/4 v1, 0x0

    .line 310
    .local v1, "i":I
    :goto_6
    const/16 v2, 0x10

    if-ge v1, v2, :cond_20

    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, "j":I
    const/4 v4, 0x0

    .line 313
    .local v4, "component":I
    :goto_c
    const/4 v5, 0x4

    if-ge v3, v5, :cond_1e

    if-ge v1, v2, :cond_1e

    .line 314
    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v6, v6, v1

    add-int v4, v5, v6

    .line 315
    add-int/lit8 v3, v3, 0x1

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 318
    :cond_1e
    add-int/2addr v0, v4

    .line 319
    .end local v3    # "j":I
    .end local v4    # "component":I
    goto :goto_6

    .line 320
    :cond_20
    return v0

    .line 323
    .end local v0    # "hash":I
    .end local v1    # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o init([BI)V
    .registers 4
    .param p1, "addr"    # [B
    .param p2, "scope_id"    # I

    .line 261
    invoke-virtual {p0, p1}, Ljava/net/Inet6Address$Inet6AddressHolder;->setAddr([B)V

    .line 264
    if-lez p2, :cond_a

    .line 265
    iput p2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    .line 268
    :cond_a
    return-void
.end method

.method greylist-max-o init([BLjava/net/NetworkInterface;)V
    .registers 4
    .param p1, "addr"    # [B
    .param p2, "nif"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0, p1}, Ljava/net/Inet6Address$Inet6AddressHolder;->setAddr([B)V

    .line 275
    if-eqz p2, :cond_14

    .line 276
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    invoke-static {v0, p2}, Ljava/net/Inet6Address;->-$$Nest$smderiveNumericScope([BLjava/net/NetworkInterface;)I

    move-result v0

    iput v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id:I

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_id_set:Z

    .line 278
    iput-object p2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname:Ljava/net/NetworkInterface;

    .line 279
    iput-boolean v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->scope_ifname_set:Z

    .line 281
    :cond_14
    return-void
.end method

.method greylist-max-o isAnyLocalAddress()Z
    .registers 4

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "test":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_f

    .line 346
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    or-int/2addr v2, v0

    int-to-byte v0, v2

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 348
    .end local v1    # "i":I
    :cond_f
    if-nez v0, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method greylist-max-o isIPv4CompatibleAddress()Z
    .registers 5

    .line 328
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v3, 0x2

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v3, 0x4

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v3, 0x5

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v3, 0x6

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v3, 0x7

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v3, 0x8

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v3, 0x9

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v3, 0xa

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/16 v3, 0xb

    aget-byte v0, v0, v3

    if-nez v0, :cond_59

    .line 334
    return v2

    .line 336
    :cond_59
    return v1
.end method

.method greylist-max-o isLinkLocalAddress()Z
    .registers 5

    .line 360
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_17

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xc0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_17

    move v1, v2

    :cond_17
    return v1
.end method

.method greylist-max-o isLoopbackAddress()Z
    .registers 4

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "test":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0xf

    if-ge v1, v2, :cond_f

    .line 354
    iget-object v2, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v2, v2, v1

    or-int/2addr v2, v0

    int-to-byte v0, v2

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 356
    .end local v1    # "i":I
    :cond_f
    if-nez v0, :cond_19

    iget-object v1, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2
.end method

.method greylist-max-o isMCGlobal()Z
    .registers 5

    .line 371
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    const/16 v3, 0xe

    if-ne v0, v3, :cond_16

    move v1, v2

    :cond_16
    return v1
.end method

.method greylist-max-o isMCLinkLocal()Z
    .registers 5

    .line 381
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x2

    if-ne v0, v3, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method greylist-max-o isMCNodeLocal()Z
    .registers 4

    .line 376
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_14

    move v1, v2

    :cond_14
    return v1
.end method

.method greylist-max-o isMCOrgLocal()Z
    .registers 5

    .line 391
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    const/16 v3, 0x8

    if-ne v0, v3, :cond_16

    move v1, v2

    :cond_16
    return v1
.end method

.method greylist-max-o isMCSiteLocal()Z
    .registers 5

    .line 386
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x5

    if-ne v0, v3, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method greylist-max-o isMulticastAddress()Z
    .registers 4

    .line 340
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method greylist-max-o isSiteLocalAddress()Z
    .registers 5

    .line 366
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    const/16 v3, 0xc0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_16

    move v1, v2

    :cond_16
    return v1
.end method

.method greylist-max-o setAddr([B)V
    .registers 5
    .param p1, "addr"    # [B

    .line 255
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    .line 256
    iget-object v0, p0, Ljava/net/Inet6Address$Inet6AddressHolder;->ipaddress:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_b
    return-void
.end method
