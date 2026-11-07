.class public Landroid/net/RouteInfo$RouteKey;
.super Ljava/lang/Object;
.source "RouteInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteKey"
.end annotation


# instance fields
.field private final blacklist mDestination:Landroid/net/IpPrefix;

.field private final blacklist mGateway:Ljava/net/InetAddress;

.field private final blacklist mInterface:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 4
    .param p1, "destination"    # Landroid/net/IpPrefix;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p1, p0, Landroid/net/RouteInfo$RouteKey;->mDestination:Landroid/net/IpPrefix;

    .line 576
    iput-object p2, p0, Landroid/net/RouteInfo$RouteKey;->mGateway:Ljava/net/InetAddress;

    .line 577
    iput-object p3, p0, Landroid/net/RouteInfo$RouteKey;->mInterface:Ljava/lang/String;

    .line 578
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 582
    instance-of v0, p1, Landroid/net/RouteInfo$RouteKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 583
    return v1

    .line 585
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/RouteInfo$RouteKey;

    .line 590
    .local v0, "p":Landroid/net/RouteInfo$RouteKey;
    iget-object v2, v0, Landroid/net/RouteInfo$RouteKey;->mDestination:Landroid/net/IpPrefix;

    iget-object v3, p0, Landroid/net/RouteInfo$RouteKey;->mDestination:Landroid/net/IpPrefix;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/net/RouteInfo$RouteKey;->mGateway:Ljava/net/InetAddress;

    iget-object v3, p0, Landroid/net/RouteInfo$RouteKey;->mGateway:Ljava/net/InetAddress;

    .line 591
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/net/RouteInfo$RouteKey;->mInterface:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/RouteInfo$RouteKey;->mInterface:Ljava/lang/String;

    .line 592
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 590
    :goto_2a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 597
    iget-object v0, p0, Landroid/net/RouteInfo$RouteKey;->mDestination:Landroid/net/IpPrefix;

    iget-object v1, p0, Landroid/net/RouteInfo$RouteKey;->mGateway:Ljava/net/InetAddress;

    iget-object v2, p0, Landroid/net/RouteInfo$RouteKey;->mInterface:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
