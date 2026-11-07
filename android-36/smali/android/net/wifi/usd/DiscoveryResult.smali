.class public Landroid/net/wifi/usd/DiscoveryResult;
.super Ljava/lang/Object;
.source "DiscoveryResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/usd/DiscoveryResult$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mIsFsdEnabled:Z

.field private final blacklist mPeerId:I

.field private final blacklist mServiceProtoType:I

.field private final blacklist mServiceSpecificInfo:[B


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/usd/DiscoveryResult$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/wifi/usd/DiscoveryResult$Builder;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->-$$Nest$fgetmPeerId(Landroid/net/wifi/usd/DiscoveryResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/usd/DiscoveryResult;->mPeerId:I

    .line 41
    invoke-static {p1}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->-$$Nest$fgetmServiceSpecificInfo(Landroid/net/wifi/usd/DiscoveryResult$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/usd/DiscoveryResult;->mServiceSpecificInfo:[B

    .line 42
    invoke-static {p1}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->-$$Nest$fgetmServiceProtoType(Landroid/net/wifi/usd/DiscoveryResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/usd/DiscoveryResult;->mServiceProtoType:I

    .line 43
    invoke-static {p1}, Landroid/net/wifi/usd/DiscoveryResult$Builder;->-$$Nest$fgetmIsFsdEnabled(Landroid/net/wifi/usd/DiscoveryResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/usd/DiscoveryResult;->mIsFsdEnabled:Z

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/usd/DiscoveryResult$Builder;Landroid/net/wifi/usd/DiscoveryResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/usd/DiscoveryResult;-><init>(Landroid/net/wifi/usd/DiscoveryResult$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist getPeerId()I
    .registers 2

    .line 50
    iget v0, p0, Landroid/net/wifi/usd/DiscoveryResult;->mPeerId:I

    return v0
.end method

.method public whitelist getServiceProtoType()I
    .registers 2

    .line 67
    iget v0, p0, Landroid/net/wifi/usd/DiscoveryResult;->mServiceProtoType:I

    return v0
.end method

.method public whitelist getServiceSpecificInfo()[B
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/net/wifi/usd/DiscoveryResult;->mServiceSpecificInfo:[B

    return-object v0
.end method

.method public whitelist isFsdEnabled()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Landroid/net/wifi/usd/DiscoveryResult;->mIsFsdEnabled:Z

    return v0
.end method
