.class public final Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;
.super Ljava/lang/Object;
.source "TunnelConnectionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils$IkeTunnelConnectionParamsUtils;
    }
.end annotation


# static fields
.field private static final blacklist EXPECTED_BUNDLE_KEY_CNT:I = 0x1

.field private static final blacklist PARAMS_TYPE_IKE:Ljava/lang/String; = "IKE"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 51
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 60
    const-string v0, "IKE"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 61
    nop

    .line 62
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils$IkeTunnelConnectionParamsUtils;->deserializeIkeParams(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    return-object v0

    .line 65
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Tunnel Connection Params type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 55
    const-string v2, "Expect PersistableBundle to have %d element but found: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "params"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 39
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 41
    .local v0, "result":Landroid/os/PersistableBundle;
    nop

    .line 43
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils$IkeTunnelConnectionParamsUtils;->serializeIkeParams(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 41
    const-string v2, "IKE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 45
    return-object v0
.end method
