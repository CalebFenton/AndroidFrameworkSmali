.class public final Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
.super Ljava/lang/Object;
.source "IkeTunnelConnectionParams.java"


# instance fields
.field private final blacklist mChildParams:Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

.field private final blacklist mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;


# direct methods
.method public constructor whitelist <init>(Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/TunnelModeChildSessionParams;)V
    .registers 4
    .param p1, "ikeParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p2, "childParams"    # Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "ikeParams was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    const-string v0, "childParams was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    .line 46
    iput-object p2, p0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mChildParams:Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 71
    return v1

    .line 74
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 76
    .local v0, "other":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mChildParams:Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mChildParams:Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 77
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 76
    :goto_20
    return v1
.end method

.method public whitelist getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    return-object v0
.end method

.method public whitelist getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mChildParams:Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 64
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->mChildParams:Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
