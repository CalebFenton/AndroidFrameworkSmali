.class public Landroid/net/LinkAddress;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LIFETIME_PERMANENT:J = 0x7fffffffffffffffL
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LIFETIME_UNKNOWN:J = -0x1L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private greylist-max-p address:Ljava/net/InetAddress;

.field private blacklist deprecationTime:J

.field private blacklist expirationTime:J

.field private greylist-max-o flags:I

.field private greylist-max-p prefixLength:I

.field private greylist-max-o scope:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 529
    new-instance v0, Landroid/net/LinkAddress$1;

    invoke-direct {v0}, Landroid/net/LinkAddress$1;-><init>()V

    sput-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 311
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    .line 312
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 15
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "scope"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-static {p1}, Landroid/net/NetworkUtils;->legacyParseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 327
    .local v0, "ipAndMask":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/net/InetAddress;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v2, p0

    move v5, p2

    move v6, p3

    .end local p2    # "flags":I
    .end local p3    # "scope":I
    .local v5, "flags":I
    .local v6, "scope":I
    invoke-direct/range {v2 .. v10}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;IIIJJ)V

    .line 328
    return-void
.end method

.method public constructor whitelist <init>(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;III)V

    .line 288
    invoke-static {p1}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    .line 289
    return-void
.end method

.method public constructor whitelist <init>(Ljava/net/InetAddress;III)V
    .registers 14
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .param p3, "flags"    # I
    .param p4, "scope"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "prefixLength":I
    .end local p3    # "flags":I
    .end local p4    # "scope":I
    .local v1, "address":Ljava/net/InetAddress;
    .local v2, "prefixLength":I
    .local v3, "flags":I
    .local v4, "scope":I
    invoke-direct/range {v0 .. v8}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;IIIJJ)V

    .line 244
    return-void
.end method

.method public constructor whitelist <init>(Ljava/net/InetAddress;IIIJJ)V
    .registers 9
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .param p3, "flags"    # I
    .param p4, "scope"    # I
    .param p5, "deprecationTime"    # J
    .param p7, "expirationTime"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    invoke-direct/range {p0 .. p8}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;IIIJJ)V

    .line 275
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/net/InterfaceAddress;)V
    .registers 4
    .param p1, "interfaceAddress"    # Ljava/net/InterfaceAddress;

    .line 298
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v1

    .line 298
    invoke-direct {p0, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 300
    return-void
.end method

.method private blacklist init(Ljava/net/InetAddress;IIIJJ)V
    .registers 15
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .param p3, "flags"    # I
    .param p4, "scope"    # I
    .param p5, "deprecationTime"    # J
    .param p7, "expirationTime"    # J

    .line 189
    if-eqz p1, :cond_ba

    .line 190
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_ba

    if-ltz p2, :cond_ba

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_12

    const/16 v0, 0x20

    if-gt p2, v0, :cond_ba

    :cond_12
    const/16 v0, 0x80

    if-gt p2, v0, :cond_ba

    .line 199
    const-wide/16 v0, -0x1

    cmp-long v2, p5, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v4

    :goto_21
    cmp-long v5, p7, v0

    if-nez v5, :cond_26

    goto :goto_27

    :cond_26
    move v3, v4

    :goto_27
    if-ne v2, v3, :cond_b2

    .line 205
    cmp-long v2, p5, v0

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4d

    cmp-long v2, p5, v3

    if-ltz v2, :cond_34

    goto :goto_4d

    .line 206
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid deprecation time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_4d
    :goto_4d
    cmp-long v2, p7, v0

    if-eqz v2, :cond_6f

    cmp-long v2, p7, v3

    if-ltz v2, :cond_56

    goto :goto_6f

    .line 211
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid expiration time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_6f
    :goto_6f
    cmp-long v2, p5, v0

    if-eqz v2, :cond_a5

    cmp-long v0, p7, v0

    if-eqz v0, :cond_a5

    cmp-long v0, p7, p5

    if-ltz v0, :cond_7c

    goto :goto_a5

    .line 217
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiration earlier than deprecation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_a5
    :goto_a5
    iput-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 222
    iput p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    .line 223
    iput p3, p0, Landroid/net/LinkAddress;->flags:I

    .line 224
    iput p4, p0, Landroid/net/LinkAddress;->scope:I

    .line 225
    iput-wide p5, p0, Landroid/net/LinkAddress;->deprecationTime:J

    .line 226
    iput-wide p7, p0, Landroid/net/LinkAddress;->expirationTime:J

    .line 227
    return-void

    .line 200
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must not specify only one of deprecation time and expiration time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad LinkAddress params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist isIpv6ULA()Z
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/ConnectivityUtils;->isIPv6ULA(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o scopeForUnicastAddress(Ljava/net/InetAddress;)I
    .registers 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 127
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_HOST:I

    return v0

    .line 131
    :cond_9
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_26

    .line 137
    :cond_16
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-nez v0, :cond_23

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 138
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_SITE:I

    return v0

    .line 141
    :cond_23
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    return v0

    .line 132
    :cond_26
    :goto_26
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_LINK:I

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 351
    instance-of v0, p1, Landroid/net/LinkAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 352
    return v1

    .line 354
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/LinkAddress;

    .line 355
    .local v0, "linkAddress":Landroid/net/LinkAddress;
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v3, v0, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v2, v3, :cond_36

    iget v2, p0, Landroid/net/LinkAddress;->flags:I

    iget v3, v0, Landroid/net/LinkAddress;->flags:I

    if-ne v2, v3, :cond_36

    iget v2, p0, Landroid/net/LinkAddress;->scope:I

    iget v3, v0, Landroid/net/LinkAddress;->scope:I

    if-ne v2, v3, :cond_36

    iget-wide v2, p0, Landroid/net/LinkAddress;->deprecationTime:J

    iget-wide v4, v0, Landroid/net/LinkAddress;->deprecationTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_36

    iget-wide v2, p0, Landroid/net/LinkAddress;->expirationTime:J

    iget-wide v4, v0, Landroid/net/LinkAddress;->expirationTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_36

    const/4 v1, 0x1

    :cond_36
    return v1
.end method

.method public whitelist getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getDeprecationTime()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 462
    iget-wide v0, p0, Landroid/net/LinkAddress;->deprecationTime:J

    return-wide v0
.end method

.method public whitelist getExpirationTime()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 477
    iget-wide v0, p0, Landroid/net/LinkAddress;->expirationTime:J

    return-wide v0
.end method

.method public whitelist getFlags()I
    .registers 8

    .line 420
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    .line 421
    .local v0, "flags":I
    iget-wide v1, p0, Landroid/net/LinkAddress;->deprecationTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Landroid/net/LinkAddress;->deprecationTime:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_18

    .line 423
    sget v1, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    or-int/2addr v0, v1

    goto :goto_1c

    .line 426
    :cond_18
    sget v1, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    not-int v1, v1

    and-int/2addr v0, v1

    .line 430
    :cond_1c
    :goto_1c
    iget-wide v1, p0, Landroid/net/LinkAddress;->expirationTime:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v1, v5

    if-nez v1, :cond_2b

    .line 431
    sget v1, Landroid/system/OsConstants;->IFA_F_PERMANENT:I

    or-int/2addr v0, v1

    goto :goto_35

    .line 432
    :cond_2b
    iget-wide v1, p0, Landroid/net/LinkAddress;->expirationTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_35

    .line 435
    sget v1, Landroid/system/OsConstants;->IFA_F_PERMANENT:I

    not-int v1, v1

    and-int/2addr v0, v1

    .line 439
    :cond_35
    :goto_35
    return v0
.end method

.method public greylist getNetworkPrefixLength()I
    .registers 2

    .line 413
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    return v0
.end method

.method public whitelist getPrefixLength()I
    .registers 2

    .line 402
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    return v0
.end method

.method public whitelist getScope()I
    .registers 2

    .line 446
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 368
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/LinkAddress;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/net/LinkAddress;->scope:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/net/LinkAddress;->deprecationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Landroid/net/LinkAddress;->expirationTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isGlobalPreferred()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 488
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    sget v1, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    if-ne v0, v1, :cond_14

    .line 489
    invoke-direct {p0}, Landroid/net/LinkAddress;->isIpv6ULA()Z

    move-result v0

    if-nez v0, :cond_14

    .line 490
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isPreferred()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 488
    :goto_15
    return v0
.end method

.method public greylist-max-p isIPv6()Z
    .registers 2

    .line 172
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v0

    return v0
.end method

.method public whitelist isIpv4()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    return v0
.end method

.method public whitelist isIpv6()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    return v0
.end method

.method public blacklist isPreferred()Z
    .registers 6

    .line 502
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getFlags()I

    move-result v0

    .line 503
    .local v0, "flags":I
    sget v1, Landroid/system/OsConstants;->IFA_F_DADFAILED:I

    sget v2, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    or-int/2addr v1, v2

    and-int/2addr v1, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    sget v1, Landroid/system/OsConstants;->IFA_F_TENTATIVE:I

    and-int/2addr v1, v0

    int-to-long v1, v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    sget v1, Landroid/system/OsConstants;->IFA_F_OPTIMISTIC:I

    and-int/2addr v1, v0

    int-to-long v1, v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_23

    :cond_21
    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method public whitelist isSameAddressAs(Landroid/net/LinkAddress;)Z
    .registers 5
    .param p1, "other"    # Landroid/net/LinkAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 384
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 385
    return v0

    .line 387
    :cond_4
    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v2, p1, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v2, p1, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v1, v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 518
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 519
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-wide v0, p0, Landroid/net/LinkAddress;->deprecationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 523
    iget-wide v0, p0, Landroid/net/LinkAddress;->expirationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 524
    return-void
.end method
