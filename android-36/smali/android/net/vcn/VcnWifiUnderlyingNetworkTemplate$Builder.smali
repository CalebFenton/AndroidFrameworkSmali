.class public final Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
.super Ljava/lang/Object;
.source "VcnWifiUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMeteredMatchCriteria:I

.field private blacklist mMinEntryDownstreamBandwidthKbps:I

.field private blacklist mMinEntryUpstreamBandwidthKbps:I

.field private blacklist mMinExitDownstreamBandwidthKbps:I

.field private blacklist mMinExitUpstreamBandwidthKbps:I

.field private final blacklist mSsids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    .line 179
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    .line 181
    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    .line 182
    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    .line 183
    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    .line 184
    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    .line 187
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
    .registers 9

    .line 306
    new-instance v0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    iget v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    iget v2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iget v4, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iget v5, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    iget-object v6, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate-IA;)V

    return-object v0
.end method

.method public whitelist setMetered(I)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .registers 3
    .param p1, "matchCriteria"    # I

    .line 205
    const-string v0, "setMetered"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 207
    iput p1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    .line 208
    return-object p0
.end method

.method public whitelist setMinDownstreamBandwidthKbps(II)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .registers 3
    .param p1, "minEntryDownstreamBandwidthKbps"    # I
    .param p2, "minExitDownstreamBandwidthKbps"    # I

    .line 294
    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 297
    iput p1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    .line 298
    iput p2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    .line 300
    return-object p0
.end method

.method public whitelist setMinUpstreamBandwidthKbps(II)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .registers 3
    .param p1, "minEntryUpstreamBandwidthKbps"    # I
    .param p2, "minExitUpstreamBandwidthKbps"    # I

    .line 256
    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 258
    iput p1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    .line 259
    iput p2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    .line 261
    return-object p0
.end method

.method public whitelist setSsids(Ljava/util/Set;)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    .line 219
    .local p1, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->-$$Nest$smvalidateSsids(Ljava/util/Set;)V

    .line 221
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 222
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 223
    return-object p0
.end method
