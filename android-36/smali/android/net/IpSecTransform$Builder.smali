.class public Landroid/net/IpSecTransform$Builder;
.super Ljava/lang/Object;
.source "IpSecTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mConfig:Landroid/net/IpSecConfig;

.field private greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iput-object p1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    .line 444
    new-instance v0, Landroid/net/IpSecConfig;

    invoke-direct {v0}, Landroid/net/IpSecConfig;-><init>()V

    iput-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    .line 445
    return-void
.end method


# virtual methods
.method public whitelist buildTransportModeTransform(Ljava/net/InetAddress;Landroid/net/IpSecManager$SecurityParameterIndex;)Landroid/net/IpSecTransform;
    .registers 6
    .param p1, "sourceAddress"    # Ljava/net/InetAddress;
    .param p2, "spi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 391
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setMode(I)V

    .line 392
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setSourceAddress(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setSpiResourceId(I)V

    .line 395
    new-instance v0, Landroid/net/IpSecTransform;

    iget-object v1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-direct {v0, v1, v2}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V

    invoke-static {v0}, Landroid/net/IpSecTransform;->-$$Nest$mactivate(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;

    move-result-object v0

    return-object v0

    .line 389
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SecurityParameterIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist buildTunnelModeTransform(Ljava/net/InetAddress;Landroid/net/IpSecManager$SecurityParameterIndex;)Landroid/net/IpSecTransform;
    .registers 6
    .param p1, "sourceAddress"    # Ljava/net/InetAddress;
    .param p2, "spi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 430
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setMode(I)V

    .line 431
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setSourceAddress(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setSpiResourceId(I)V

    .line 433
    new-instance v0, Landroid/net/IpSecTransform;

    iget-object v1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-direct {v0, v1, v2}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V

    invoke-static {v0}, Landroid/net/IpSecTransform;->-$$Nest$mactivate(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;

    move-result-object v0

    return-object v0

    .line 428
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SecurityParameterIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthenticatedEncryption(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .registers 3
    .param p1, "algo"    # Landroid/net/IpSecAlgorithm;

    .line 328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v0, p1}, Landroid/net/IpSecConfig;->setAuthenticatedEncryption(Landroid/net/IpSecAlgorithm;)V

    .line 330
    return-object p0
.end method

.method public whitelist setAuthentication(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .registers 3
    .param p1, "algo"    # Landroid/net/IpSecAlgorithm;

    .line 308
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v0, p1}, Landroid/net/IpSecConfig;->setAuthentication(Landroid/net/IpSecAlgorithm;)V

    .line 310
    return-object p0
.end method

.method public whitelist setEncryption(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .registers 3
    .param p1, "algo"    # Landroid/net/IpSecAlgorithm;

    .line 293
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v0, p1}, Landroid/net/IpSecConfig;->setEncryption(Landroid/net/IpSecAlgorithm;)V

    .line 295
    return-object p0
.end method

.method public whitelist setIpv4Encapsulation(Landroid/net/IpSecManager$UdpEncapsulationSocket;I)Landroid/net/IpSecTransform$Builder;
    .registers 5
    .param p1, "localSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p2, "remotePort"    # I

    .line 349
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setEncapType(I)V

    .line 351
    invoke-virtual {p1}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 354
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p1}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setEncapSocketResourceId(I)V

    .line 355
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v0, p2}, Landroid/net/IpSecConfig;->setEncapRemotePort(I)V

    .line 356
    return-object p0

    .line 352
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UdpEncapsulationSocket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
