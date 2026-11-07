.class public final Landroid/net/wifi/usd/DiscoveryResult$Builder;
.super Ljava/lang/Object;
.source "DiscoveryResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/usd/DiscoveryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsFsdEnabled:Z

.field private final blacklist mPeerId:I

.field private blacklist mServiceProtoType:I

.field private blacklist mServiceSpecificInfo:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsFsdEnabled(Landroid/net/wifi/usd/DiscoveryResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/usd/DiscoveryResult$Builder;->mIsFsdEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeerId(Landroid/net/wifi/usd/DiscoveryResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/DiscoveryResult$Builder;->mPeerId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceProtoType(Landroid/net/wifi/usd/DiscoveryResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/DiscoveryResult$Builder;->mServiceProtoType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceSpecificInfo(Landroid/net/wifi/usd/DiscoveryResult$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/DiscoveryResult$Builder;->mServiceSpecificInfo:[B

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "peerId"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Landroid/net/wifi/usd/DiscoveryResult$Builder;->mPeerId:I

    .line 94
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/usd/DiscoveryResult;
    .registers 3

    .line 144
    new-instance v0, Landroid/net/wifi/usd/DiscoveryResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/usd/DiscoveryResult;-><init>(Landroid/net/wifi/usd/DiscoveryResult$Builder;Landroid/net/wifi/usd/DiscoveryResult-IA;)V

    return-object v0
.end method

.method public whitelist setFsdEnabled(Z)Landroid/net/wifi/usd/DiscoveryResult$Builder;
    .registers 2
    .param p1, "isFsdEnabled"    # Z

    .line 132
    iput-boolean p1, p0, Landroid/net/wifi/usd/DiscoveryResult$Builder;->mIsFsdEnabled:Z

    .line 133
    return-object p0
.end method

.method public whitelist setServiceProtoType(I)Landroid/net/wifi/usd/DiscoveryResult$Builder;
    .registers 2
    .param p1, "serviceProtoType"    # I

    .line 119
    iput p1, p0, Landroid/net/wifi/usd/DiscoveryResult$Builder;->mServiceProtoType:I

    .line 120
    return-object p0
.end method

.method public whitelist setServiceSpecificInfo([B)Landroid/net/wifi/usd/DiscoveryResult$Builder;
    .registers 2
    .param p1, "serviceSpecificInfo"    # [B

    .line 106
    iput-object p1, p0, Landroid/net/wifi/usd/DiscoveryResult$Builder;->mServiceSpecificInfo:[B

    .line 107
    return-object p0
.end method
