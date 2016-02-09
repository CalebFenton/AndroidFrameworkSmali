.class public final Landroid/net/RouteInfo;
.super Ljava/lang/Object;
.source "RouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/RouteInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RTN_THROW:I = 0x9

.field public static final RTN_UNICAST:I = 0x1

.field public static final RTN_UNREACHABLE:I = 0x7


# instance fields
.field private final mDestination:Landroid/net/IpPrefix;

.field private final mGateway:Ljava/net/InetAddress;

.field private final mHasGateway:Z

.field private final mInterface:Ljava/lang/String;

.field private final mIsHost:Z

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 470
    new-instance v0, Landroid/net/RouteInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/RouteInfo$1;-><init>()V

    #@5
    .line 469
    sput-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/IpPrefix;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 224
    invoke-direct {p0, p1, v0, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@4
    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;I)V
    .locals 1
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 238
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    #@4
    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 192
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@4
    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    #@4
    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V
    .locals 3
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;
    .param p4, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 103
    sparse-switch p4, :sswitch_data_0

    #@7
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Unknown route type "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 122
    :sswitch_0
    if-nez p1, :cond_0

    #@23
    .line 123
    if-eqz p2, :cond_4

    #@25
    .line 124
    instance-of v1, p2, Ljava/net/Inet4Address;

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 125
    new-instance p1, Landroid/net/IpPrefix;

    #@2b
    .end local p1    # "destination":Landroid/net/IpPrefix;
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@2d
    invoke-direct {p1, v1, v0}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@30
    .line 138
    .restart local p1    # "destination":Landroid/net/IpPrefix;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    #@32
    .line 139
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@35
    move-result-object v1

    #@36
    instance-of v1, v1, Ljava/net/Inet4Address;

    #@38
    if-eqz v1, :cond_5

    #@3a
    .line 140
    sget-object p2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@3c
    .line 145
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_6

    #@42
    :goto_2
    iput-boolean v0, p0, Landroid/net/RouteInfo;->mHasGateway:Z

    #@44
    .line 147
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@47
    move-result-object v0

    #@48
    instance-of v0, v0, Ljava/net/Inet4Address;

    #@4a
    if-eqz v0, :cond_7

    #@4c
    .line 148
    instance-of v0, p2, Ljava/net/Inet4Address;

    #@4e
    if-nez v0, :cond_7

    #@50
    .line 151
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@52
    const-string/jumbo v1, "address family mismatch in RouteInfo constructor"

    #@55
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v0

    #@59
    .line 127
    :cond_3
    new-instance p1, Landroid/net/IpPrefix;

    #@5b
    .end local p1    # "destination":Landroid/net/IpPrefix;
    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@5d
    invoke-direct {p1, v1, v0}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@60
    .restart local p1    # "destination":Landroid/net/IpPrefix;
    goto :goto_0

    #@61
    .line 131
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@63
    new-instance v1, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v2, "Invalid arguments passed in: "

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    const-string/jumbo v2, ","

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@85
    throw v0

    #@86
    .line 142
    :cond_5
    sget-object p2, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@88
    goto :goto_1

    #@89
    .line 145
    :cond_6
    const/4 v0, 0x1

    #@8a
    goto :goto_2

    #@8b
    .line 149
    :cond_7
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@8e
    move-result-object v0

    #@8f
    instance-of v0, v0, Ljava/net/Inet6Address;

    #@91
    if-eqz v0, :cond_8

    #@93
    .line 150
    instance-of v0, p2, Ljava/net/Inet6Address;

    #@95
    if-eqz v0, :cond_2

    #@97
    .line 153
    :cond_8
    iput-object p1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@99
    .line 154
    iput-object p2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    #@9b
    .line 155
    iput-object p3, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    #@9d
    .line 156
    iput p4, p0, Landroid/net/RouteInfo;->mType:I

    #@9f
    .line 157
    invoke-direct {p0}, Landroid/net/RouteInfo;->isHost()Z

    #@a2
    move-result v0

    #@a3
    iput-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    #@a5
    .line 102
    return-void

    #@a6
    .line 103
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/net/LinkAddress;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 231
    invoke-direct {p0, p1, v0, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@4
    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/LinkAddress;
    .param p2, "gateway"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@4
    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "destination"    # Landroid/net/LinkAddress;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 171
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@6
    .line 170
    return-void

    #@7
    .line 172
    :cond_0
    new-instance v0, Landroid/net/IpPrefix;

    #@9
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    #@10
    move-result v2

    #@11
    invoke-direct {v0, v1, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@14
    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "gateway"    # Ljava/net/InetAddress;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, v1

    #@2
    .line 212
    check-cast v0, Landroid/net/IpPrefix;

    #@4
    invoke-direct {p0, v0, p1, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@7
    .line 211
    return-void
.end method

.method private isHost()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 262
    iget-object v2, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@4
    invoke-virtual {v2}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@7
    move-result-object v2

    #@8
    instance-of v2, v2, Ljava/net/Inet4Address;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 263
    iget-object v2, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@e
    invoke-virtual {v2}, Landroid/net/IpPrefix;->getPrefixLength()I

    #@11
    move-result v2

    #@12
    const/16 v3, 0x20

    #@14
    if-ne v2, v3, :cond_1

    #@16
    .line 262
    :cond_0
    :goto_0
    return v0

    #@17
    .line 264
    :cond_1
    iget-object v2, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@19
    invoke-virtual {v2}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@1c
    move-result-object v2

    #@1d
    instance-of v2, v2, Ljava/net/Inet6Address;

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 265
    iget-object v2, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@23
    invoke-virtual {v2}, Landroid/net/IpPrefix;->getPrefixLength()I

    #@26
    move-result v2

    #@27
    const/16 v3, 0x80

    #@29
    if-eq v2, v3, :cond_0

    #@2b
    move v0, v1

    #@2c
    goto :goto_0

    #@2d
    :cond_2
    move v0, v1

    #@2e
    .line 264
    goto :goto_0
.end method

.method public static makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;
    .locals 1
    .param p0, "host"    # Ljava/net/InetAddress;
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;
    .locals 3
    .param p0, "host"    # Ljava/net/InetAddress;
    .param p1, "gateway"    # Ljava/net/InetAddress;
    .param p2, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 252
    if-nez p0, :cond_0

    #@3
    return-object v0

    #@4
    .line 254
    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 255
    new-instance v0, Landroid/net/RouteInfo;

    #@a
    new-instance v1, Landroid/net/IpPrefix;

    #@c
    const/16 v2, 0x20

    #@e
    invoke-direct {v1, p0, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@11
    invoke-direct {v0, v1, p1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@14
    return-object v0

    #@15
    .line 257
    :cond_1
    new-instance v0, Landroid/net/RouteInfo;

    #@17
    new-instance v1, Landroid/net/IpPrefix;

    #@19
    const/16 v2, 0x80

    #@1b
    invoke-direct {v1, p0, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@1e
    invoke-direct {v0, v1, p1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@21
    return-object v0
.end method

.method public static selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .locals 5
    .param p1, "dest"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")",
            "Landroid/net/RouteInfo;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    const/4 v3, 0x0

    #@1
    .line 383
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    :cond_0
    return-object v3

    #@6
    .line 385
    :cond_1
    const/4 v0, 0x0

    #@7
    .line 387
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .end local v0    # "bestRoute":Landroid/net/RouteInfo;
    .local v2, "route$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_4

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/net/RouteInfo;

    #@17
    .line 388
    .local v1, "route":Landroid/net/RouteInfo;
    iget-object v3, v1, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@19
    invoke-virtual {v3}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v3, p1}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 389
    if-eqz v0, :cond_3

    #@25
    .line 390
    iget-object v3, v0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@27
    invoke-virtual {v3}, Landroid/net/IpPrefix;->getPrefixLength()I

    #@2a
    move-result v3

    #@2b
    .line 391
    iget-object v4, v1, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@2d
    invoke-virtual {v4}, Landroid/net/IpPrefix;->getPrefixLength()I

    #@30
    move-result v4

    #@31
    .line 390
    if-ge v3, v4, :cond_2

    #@33
    .line 394
    :cond_3
    invoke-virtual {v1, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_2

    #@39
    move-object v0, v1

    #@3a
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    goto :goto_0

    #@3b
    .line 397
    .end local v0    # "bestRoute":Landroid/net/RouteInfo;
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_4
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 452
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 426
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 428
    :cond_0
    instance-of v3, p1, Landroid/net/RouteInfo;

    #@7
    if-nez v3, :cond_1

    #@9
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 430
    check-cast v0, Landroid/net/RouteInfo;

    #@d
    .line 432
    .local v0, "target":Landroid/net/RouteInfo;
    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@f
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    #@12
    move-result-object v4

    #@13
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_3

    #@19
    .line 433
    iget-object v3, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    #@1b
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    .line 432
    if-eqz v3, :cond_3

    #@25
    .line 434
    iget-object v3, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    #@27
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    .line 432
    if-eqz v3, :cond_3

    #@31
    .line 435
    iget v3, p0, Landroid/net/RouteInfo;->mType:I

    #@33
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getType()I

    #@36
    move-result v4

    #@37
    if-ne v3, v4, :cond_2

    #@39
    .line 432
    :goto_0
    return v1

    #@3a
    :cond_2
    move v1, v2

    #@3b
    .line 435
    goto :goto_0

    #@3c
    :cond_3
    move v1, v2

    #@3d
    .line 432
    goto :goto_0
.end method

.method public getDestination()Landroid/net/IpPrefix;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@2
    return-object v0
.end method

.method public getDestinationLinkAddress()Landroid/net/LinkAddress;
    .locals 3

    #@0
    .prologue
    .line 282
    new-instance v0, Landroid/net/LinkAddress;

    #@2
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@4
    invoke-virtual {v1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@a
    invoke-virtual {v2}, Landroid/net/IpPrefix;->getPrefixLength()I

    #@d
    move-result v2

    #@e
    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@11
    return-object v0
.end method

.method public getGateway()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 312
    iget v0, p0, Landroid/net/RouteInfo;->mType:I

    #@2
    return v0
.end method

.method public hasGateway()Z
    .locals 1

    #@0
    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mHasGateway:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 442
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@3
    invoke-virtual {v0}, Landroid/net/IpPrefix;->hashCode()I

    #@6
    move-result v0

    #@7
    mul-int/lit8 v2, v0, 0x29

    #@9
    .line 443
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    #@b
    if-nez v0, :cond_0

    #@d
    move v0, v1

    #@e
    .line 442
    :goto_0
    add-int/2addr v0, v2

    #@f
    .line 444
    iget-object v2, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    #@11
    if-nez v2, :cond_1

    #@13
    .line 442
    :goto_1
    add-int/2addr v0, v1

    #@14
    .line 445
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    #@16
    mul-int/lit8 v1, v1, 0x47

    #@18
    .line 442
    add-int/2addr v0, v1

    #@19
    return v0

    #@1a
    .line 443
    :cond_0
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    #@1c
    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    #@1f
    move-result v0

    #@20
    mul-int/lit8 v0, v0, 0x2f

    #@22
    goto :goto_0

    #@23
    .line 444
    :cond_1
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    #@25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@28
    move-result v1

    #@29
    mul-int/lit8 v1, v1, 0x43

    #@2b
    goto :goto_1
.end method

.method public isDefaultRoute()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 321
    iget v2, p0, Landroid/net/RouteInfo;->mType:I

    #@4
    if-ne v2, v0, :cond_0

    #@6
    iget-object v2, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@8
    invoke-virtual {v2}, Landroid/net/IpPrefix;->getPrefixLength()I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public isHostRoute()Z
    .locals 1

    #@0
    .prologue
    .line 348
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    #@2
    return v0
.end method

.method public isIPv4Default()Z
    .locals 1

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@8
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@b
    move-result-object v0

    #@c
    instance-of v0, v0, Ljava/net/Inet4Address;

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public isIPv6Default()Z
    .locals 1

    #@0
    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@8
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    #@b
    move-result-object v0

    #@c
    instance-of v0, v0, Ljava/net/Inet6Address;

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public matches(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "destination"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 404
    const-string/jumbo v0, ""

    #@3
    .line 405
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@9
    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 406
    :cond_0
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    #@f
    const/4 v2, 0x7

    #@10
    if-ne v1, v2, :cond_2

    #@12
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " unreachable"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 418
    :cond_1
    :goto_0
    return-object v0

    #@27
    .line 408
    :cond_2
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    #@29
    const/16 v2, 0x9

    #@2b
    if-ne v1, v2, :cond_3

    #@2d
    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, " throw"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    goto :goto_0

    #@42
    .line 411
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    const-string/jumbo v2, " ->"

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    .line 412
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    #@58
    if-eqz v1, :cond_4

    #@5a
    new-instance v1, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    const-string/jumbo v2, " "

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    iget-object v2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    #@6c
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    .line 413
    :cond_4
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    #@7a
    if-eqz v1, :cond_5

    #@7c
    new-instance v1, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    const-string/jumbo v2, " "

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    iget-object v2, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    .line 414
    :cond_5
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    #@98
    const/4 v2, 0x1

    #@99
    if-eq v1, v2, :cond_1

    #@9b
    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    const-string/jumbo v2, " unknown type "

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    iget v2, p0, Landroid/net/RouteInfo;->mType:I

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 459
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/IpPrefix;

    #@2
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 460
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    .line 461
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@d
    .line 462
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 463
    iget v1, p0, Landroid/net/RouteInfo;->mType:I

    #@14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 458
    return-void

    #@18
    .line 460
    :cond_0
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    #@1a
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    #@1d
    move-result-object v0

    #@1e
    .local v0, "gatewayBytes":[B
    goto :goto_0
.end method
