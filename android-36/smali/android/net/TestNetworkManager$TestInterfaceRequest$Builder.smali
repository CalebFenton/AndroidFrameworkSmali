.class public Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;
.super Ljava/lang/Object;
.source "TestNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TestNetworkManager$TestInterfaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBringUp:Z

.field private blacklist mDisableIpv6ProvDelay:Z

.field private blacklist mHasCarrier:Z

.field private blacklist mIfname:Ljava/lang/String;

.field private blacklist mIsTun:Z

.field private blacklist mLinkAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mIsTun:Z

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mHasCarrier:Z

    .line 294
    iput-boolean v1, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mBringUp:Z

    .line 295
    iput-boolean v0, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mDisableIpv6ProvDelay:Z

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mLinkAddresses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist addLinkAddress(Landroid/net/LinkAddress;)Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;
    .registers 3
    .param p1, "la"    # Landroid/net/LinkAddress;

    .line 337
    iget-object v0, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mLinkAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object p0
.end method

.method public blacklist build()Landroid/net/TestNetworkManager$TestInterfaceRequest;
    .registers 9

    .line 343
    new-instance v0, Landroid/net/TestNetworkManager$TestInterfaceRequest;

    iget-boolean v1, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mIsTun:Z

    iget-boolean v2, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mHasCarrier:Z

    iget-boolean v3, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mBringUp:Z

    iget-boolean v4, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mDisableIpv6ProvDelay:Z

    iget-object v5, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mIfname:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mLinkAddresses:Ljava/util/List;

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/net/LinkAddress;

    .line 344
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/LinkAddress;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/net/TestNetworkManager$TestInterfaceRequest;-><init>(ZZZZLjava/lang/String;[Landroid/net/LinkAddress;Landroid/net/TestNetworkManager-IA;)V

    .line 343
    return-object v0
.end method

.method public blacklist setBringUp(Z)Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;
    .registers 2
    .param p1, "bringUp"    # Z

    .line 319
    iput-boolean p1, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mBringUp:Z

    .line 320
    return-object p0
.end method

.method public blacklist setDisableIpv6ProvisioningDelay(Z)Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;
    .registers 2
    .param p1, "disableProvDelay"    # Z

    .line 325
    iput-boolean p1, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mDisableIpv6ProvDelay:Z

    .line 326
    return-object p0
.end method

.method public blacklist setHasCarrier(Z)Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;
    .registers 2
    .param p1, "hasCarrier"    # Z

    .line 313
    iput-boolean p1, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mHasCarrier:Z

    .line 314
    return-object p0
.end method

.method public blacklist setInterfaceName(Ljava/lang/String;)Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;
    .registers 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 331
    iput-object p1, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mIfname:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public blacklist setTap()Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;
    .registers 2

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mIsTun:Z

    .line 308
    return-object p0
.end method

.method public blacklist setTun()Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;
    .registers 2

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;->mIsTun:Z

    .line 302
    return-object p0
.end method
