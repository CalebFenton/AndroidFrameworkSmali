.class public final Landroid/net/vcn/VcnTransportInfo$Builder;
.super Ljava/lang/Object;
.source "VcnTransportInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMinUdpPort4500NatTimeoutSeconds:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/vcn/VcnTransportInfo$Builder;->mMinUdpPort4500NatTimeoutSeconds:I

    .line 272
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/vcn/VcnTransportInfo;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 314
    new-instance v0, Landroid/net/vcn/VcnTransportInfo;

    const/4 v1, -0x1

    iget v2, p0, Landroid/net/vcn/VcnTransportInfo$Builder;->mMinUdpPort4500NatTimeoutSeconds:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;IILandroid/net/vcn/VcnTransportInfo-IA;)V

    return-object v0
.end method

.method public blacklist setMinUdpPort4500NatTimeoutSeconds(I)Landroid/net/vcn/VcnTransportInfo$Builder;
    .registers 4
    .param p1, "minUdpPort4500NatTimeoutSeconds"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 295
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0x78

    if-lt p1, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    const-string v1, "Timeout must be at least 120s or MIN_UDP_PORT_4500_NAT_TIMEOUT_UNSET"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 301
    iput p1, p0, Landroid/net/vcn/VcnTransportInfo$Builder;->mMinUdpPort4500NatTimeoutSeconds:I

    .line 302
    return-object p0
.end method
