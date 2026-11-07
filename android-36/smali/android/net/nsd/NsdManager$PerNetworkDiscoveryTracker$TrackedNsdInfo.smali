.class Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedNsdInfo"
.end annotation


# instance fields
.field private final blacklist mServiceName:Ljava/lang/String;

.field private final blacklist mServiceType:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmServiceName(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceType(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceType:Ljava/lang/String;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceName:Ljava/lang/String;

    .line 593
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceType:Ljava/lang/String;

    .line 594
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 603
    instance-of v0, p1, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 604
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;

    .line 605
    .local v0, "other":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;
    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceType:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceType:Ljava/lang/String;

    .line 606
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 605
    :goto_20
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 598
    iget-object v0, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker$TrackedNsdInfo;->mServiceType:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
