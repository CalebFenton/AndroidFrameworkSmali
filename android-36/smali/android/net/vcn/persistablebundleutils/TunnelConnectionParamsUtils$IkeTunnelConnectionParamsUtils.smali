.class final Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils$IkeTunnelConnectionParamsUtils;
.super Ljava/lang/Object;
.source "TunnelConnectionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IkeTunnelConnectionParamsUtils"
.end annotation


# static fields
.field private static final blacklist CHILD_PARAMS_KEY:Ljava/lang/String; = "CHILD_PARAMS_KEY"

.field private static final blacklist IKE_PARAMS_KEY:Ljava/lang/String; = "IKE_PARAMS_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deserializeIkeParams(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .registers 6
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 91
    const-string v0, "IKE_PARAMS_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 92
    .local v0, "ikeBundle":Landroid/os/PersistableBundle;
    const-string v1, "CHILD_PARAMS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 93
    .local v1, "childBundle":Landroid/os/PersistableBundle;
    const-string v2, "IkeSessionParams was null"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string v2, "TunnelModeChildSessionParams was null"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    nop

    .line 97
    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v2

    .line 98
    .local v2, "ikeParams":Landroid/net/ipsec/ike/IkeSessionParams;
    nop

    .line 99
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v3

    .line 100
    .local v3, "childParams":Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
    new-instance v4, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-direct {v4, v2, v3}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/TunnelModeChildSessionParams;)V

    return-object v4
.end method

.method public static blacklist serializeIkeParams(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "ikeParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 76
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 78
    .local v0, "result":Landroid/os/PersistableBundle;
    nop

    .line 80
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 78
    const-string v2, "IKE_PARAMS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 81
    nop

    .line 84
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/TunnelModeChildSessionParams;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 81
    const-string v2, "CHILD_PARAMS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 85
    return-object v0
.end method
