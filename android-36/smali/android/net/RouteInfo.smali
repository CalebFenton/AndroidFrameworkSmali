.class public final Landroid/net/RouteInfo;
.super Ljava/lang/Object;
.source "RouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/RouteInfo$RouteKey;,
        Landroid/net/RouteInfo$RouteType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RTN_THROW:I = 0x9

.field public static final whitelist RTN_UNICAST:I = 0x1

.field public static final whitelist RTN_UNREACHABLE:I = 0x7


# instance fields
.field private final greylist-max-o mDestination:Landroid/net/IpPrefix;

.field private final greylist mGateway:Ljava/net/InetAddress;

.field private final greylist-max-o mHasGateway:Z

.field private final greylist-max-o mInterface:Ljava/lang/String;

.field private final greylist-max-p mIsHost:Z

.field private final blacklist mMtu:I

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 644
    new-instance v0, Landroid/net/RouteInfo$1;

    invoke-direct {v0}, Landroid/net/RouteInfo$1;-><init>()V

    sput-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/IpPrefix;)V
    .registers 3
    .param p1, "destination"    # Landroid/net/IpPrefix;

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/IpPrefix;I)V
    .registers 4
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "type"    # I

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 329
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 5
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 251
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V
    .registers 11
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 148
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "destination":Landroid/net/IpPrefix;
    .end local p2    # "gateway":Ljava/net/InetAddress;
    .end local p3    # "iface":Ljava/lang/String;
    .end local p4    # "type":I
    .local v1, "destination":Landroid/net/IpPrefix;
    .local v2, "gateway":Ljava/net/InetAddress;
    .local v3, "iface":Ljava/lang/String;
    .local v4, "type":I
    invoke-direct/range {v0 .. v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;II)V

    .line 149
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;II)V
    .registers 9
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "mtu"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    sparse-switch p4, :sswitch_data_a8

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown route type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :sswitch_1f
    nop

    .line 192
    if-nez p1, :cond_5e

    .line 193
    if-eqz p2, :cond_3b

    .line 194
    instance-of v0, p2, Ljava/net/Inet4Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 195
    new-instance v0, Landroid/net/IpPrefix;

    sget-object v2, Landroid/net/connectivity/com/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    invoke-direct {v0, v2, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    move-object p1, v0

    goto :goto_5e

    .line 197
    :cond_32
    new-instance v0, Landroid/net/IpPrefix;

    sget-object v2, Landroid/net/connectivity/com/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    invoke-direct {v0, v2, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    move-object p1, v0

    goto :goto_5e

    .line 201
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments passed in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_5e
    :goto_5e
    if-nez p2, :cond_6d

    .line 209
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_6b

    .line 210
    sget-object p2, Landroid/net/connectivity/com/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    goto :goto_6d

    .line 212
    :cond_6b
    sget-object p2, Landroid/net/connectivity/com/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    .line 215
    :cond_6d
    :goto_6d
    invoke-virtual {p2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/net/RouteInfo;->mHasGateway:Z

    .line 217
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_81

    instance-of v0, p2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_8e

    .line 219
    :cond_81
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_96

    instance-of v0, p2, Ljava/net/Inet6Address;

    if-eqz v0, :cond_8e

    goto :goto_96

    .line 221
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address family mismatch in RouteInfo constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_96
    :goto_96
    iput-object p1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    .line 224
    iput-object p2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    .line 225
    iput-object p3, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    .line 226
    iput p4, p0, Landroid/net/RouteInfo;->mType:I

    .line 227
    invoke-direct {p0}, Landroid/net/RouteInfo;->isHost()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    .line 228
    iput p5, p0, Landroid/net/RouteInfo;->mMtu:I

    .line 229
    return-void

    nop

    :sswitch_data_a8
    .sparse-switch
        0x1 -> :sswitch_1f
        0x7 -> :sswitch_1f
        0x9 -> :sswitch_1f
    .end sparse-switch
.end method

.method public constructor greylist-max-o <init>(Landroid/net/LinkAddress;)V
    .registers 3
    .param p1, "destination"    # Landroid/net/LinkAddress;

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public constructor greylist <init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "destination"    # Landroid/net/LinkAddress;
    .param p2, "gateway"    # Ljava/net/InetAddress;

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public constructor greylist <init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 7
    .param p1, "destination"    # Landroid/net/LinkAddress;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;

    .line 259
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_11

    .line 260
    :cond_4
    new-instance v0, Landroid/net/IpPrefix;

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 259
    :goto_11
    invoke-direct {p0, v0, p2, p3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public constructor greylist <init>(Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "gateway"    # Ljava/net/InetAddress;

    .line 302
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/net/IpPrefix;

    invoke-direct {p0, v0, p1, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private greylist-max-p isHost()Z
    .registers 3

    .line 354
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    .line 355
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_28

    :cond_14
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    .line 356
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    .line 357
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2a

    :cond_28
    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 354
    :goto_2b
    return v0
.end method

.method private blacklist isUnreachableDefaultRoute()Z
    .registers 3

    .line 437
    iget v0, p0, Landroid/net/RouteInfo;->mType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static greylist-max-o makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;
    .registers 3
    .param p0, "host"    # Ljava/net/InetAddress;
    .param p1, "iface"    # Ljava/lang/String;

    .line 335
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;
    .registers 6
    .param p0, "host"    # Ljava/net/InetAddress;
    .param p1, "gateway"    # Ljava/net/InetAddress;
    .param p2, "iface"    # Ljava/lang/String;

    .line 343
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_4
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_15

    .line 346
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    const/16 v2, 0x20

    invoke-direct {v1, p0, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, p1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0

    .line 348
    :cond_15
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    const/16 v2, 0x80

    invoke-direct {v1, p0, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, p1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-r selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .registers 3
    .param p1, "dest"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")",
            "Landroid/net/RouteInfo;"
        }
    .end annotation

    .line 516
    .local p0, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-static {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/NetUtils;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 546
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 548
    :cond_4
    instance-of v1, p1, Landroid/net/RouteInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 550
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/RouteInfo;

    .line 552
    .local v1, "target":Landroid/net/RouteInfo;
    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    .line 553
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    .line 554
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget v3, p0, Landroid/net/RouteInfo;->mType:I

    .line 555
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/net/RouteInfo;->mMtu:I

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getMtu()I

    move-result v4

    if-ne v3, v4, :cond_42

    goto :goto_43

    :cond_42
    move v0, v2

    .line 552
    :goto_43
    return v0
.end method

.method public whitelist getDestination()Landroid/net/IpPrefix;
    .registers 2

    .line 367
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    return-object v0
.end method

.method public greylist-max-o getDestinationLinkAddress()Landroid/net/LinkAddress;
    .registers 4

    .line 376
    new-instance v0, Landroid/net/LinkAddress;

    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v2}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public whitelist getGateway()Ljava/net/InetAddress;
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getInterface()Ljava/lang/String;
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMtu()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 418
    iget v0, p0, Landroid/net/RouteInfo;->mMtu:I

    return v0
.end method

.method public blacklist getRouteKey()Landroid/net/RouteInfo$RouteKey;
    .registers 5

    .line 609
    new-instance v0, Landroid/net/RouteInfo$RouteKey;

    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    iget-object v2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    iget-object v3, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/RouteInfo$RouteKey;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 407
    iget v0, p0, Landroid/net/RouteInfo;->mType:I

    return v0
.end method

.method public whitelist hasGateway()Z
    .registers 2

    .line 490
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mHasGateway:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 616
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x29

    .line 617
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_17

    :cond_f
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2f

    :goto_17
    add-int/2addr v0, v1

    .line 618
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    if-nez v1, :cond_1d

    goto :goto_25

    :cond_1d
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v2, v1, 0x43

    :goto_25
    add-int/2addr v0, v2

    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    mul-int/lit8 v1, v1, 0x47

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/RouteInfo;->mMtu:I

    mul-int/lit8 v1, v1, 0x59

    add-int/2addr v0, v1

    .line 616
    return v0
.end method

.method public whitelist isDefaultRoute()Z
    .registers 3

    .line 427
    iget v0, p0, Landroid/net/RouteInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public greylist-max-o isHostRoute()Z
    .registers 2

    .line 480
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    return v0
.end method

.method public greylist-max-o isIPv4Default()Z
    .registers 2

    .line 445
    invoke-virtual {p0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist isIPv4UnreachableDefault()Z
    .registers 2

    .line 453
    invoke-direct {p0}, Landroid/net/RouteInfo;->isUnreachableDefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public greylist-max-o isIPv6Default()Z
    .registers 2

    .line 461
    invoke-virtual {p0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist isIPv6UnreachableDefault()Z
    .registers 2

    .line 469
    invoke-direct {p0}, Landroid/net/RouteInfo;->isUnreachableDefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist matches(Ljava/net/InetAddress;)Z
    .registers 3
    .param p1, "destination"    # Ljava/net/InetAddress;

    .line 501
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v0, p1}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 523
    const-string v0, ""

    .line 524
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    :cond_c
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_26

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unreachable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ad

    .line 527
    :cond_26
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_40

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " throw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ad

    .line 530
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    const-string v2, " "

    if-eqz v1, :cond_74

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_74
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    if-eqz v1, :cond_8f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    :cond_8f
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_ad

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/RouteInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_ad
    :goto_ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mtu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/RouteInfo;->mMtu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 633
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 634
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 635
    .local v0, "gatewayBytes":[B
    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 636
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    iget v1, p0, Landroid/net/RouteInfo;->mMtu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    return-void
.end method
