.class public final Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
.super Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
.source "VcnWifiUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    }
.end annotation


# static fields
.field private static final blacklist SSIDS_KEY:Ljava/lang/String; = "mSsids"


# instance fields
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
.method static bridge synthetic blacklist -$$Nest$smvalidateSsids(Ljava/util/Set;)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->validateSsids(Ljava/util/Set;)V

    return-void
.end method

.method private constructor blacklist <init>(IIIIILjava/util/Set;)V
    .registers 14
    .param p1, "meteredMatchCriteria"    # I
    .param p2, "minEntryUpstreamBandwidthKbps"    # I
    .param p3, "minExitUpstreamBandwidthKbps"    # I
    .param p4, "minEntryDownstreamBandwidthKbps"    # I
    .param p5, "minExitDownstreamBandwidthKbps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p6, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "meteredMatchCriteria":I
    .end local p2    # "minEntryUpstreamBandwidthKbps":I
    .end local p3    # "minExitUpstreamBandwidthKbps":I
    .end local p4    # "minEntryDownstreamBandwidthKbps":I
    .end local p5    # "minExitDownstreamBandwidthKbps":I
    .local v2, "meteredMatchCriteria":I
    .local v3, "minEntryUpstreamBandwidthKbps":I
    .local v4, "minExitUpstreamBandwidthKbps":I
    .local v5, "minEntryDownstreamBandwidthKbps":I
    .local v6, "minExitDownstreamBandwidthKbps":I
    invoke-direct/range {v0 .. v6}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;-><init>(IIIIII)V

    .line 67
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    .line 69
    invoke-virtual {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->validate()V

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILjava/util/Set;Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;)V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
    .registers 9
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 92
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string v0, "mMeteredMatchCriteria"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 96
    .local v2, "meteredMatchCriteria":I
    nop

    .line 97
    const-string v0, "mMinEntryUpstreamBandwidthKbps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 98
    .local v3, "minEntryUpstreamBandwidthKbps":I
    nop

    .line 99
    const-string v0, "mMinExitUpstreamBandwidthKbps"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 100
    .local v4, "minExitUpstreamBandwidthKbps":I
    nop

    .line 101
    const-string v0, "mMinEntryDownstreamBandwidthKbps"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 102
    .local v5, "minEntryDownstreamBandwidthKbps":I
    nop

    .line 103
    const-string v0, "mMinExitDownstreamBandwidthKbps"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 105
    .local v6, "minExitDownstreamBandwidthKbps":I
    const-string v0, "mSsids"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 106
    .local v0, "ssidsBundle":Landroid/os/PersistableBundle;
    const-string v1, "ssidsBundle is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    new-instance v7, Landroid/util/ArraySet;

    sget-object v1, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->STRING_DESERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;

    .line 109
    invoke-static {v0, v1}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 110
    .local v7, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    invoke-direct/range {v1 .. v7}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;)V

    return-object v1
.end method

.method private static blacklist validateSsids(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p0, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "ssids is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "ssid":Ljava/lang/String;
    const-string v2, "found null value ssid"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .end local v1    # "ssid":Ljava/lang/String;
    goto :goto_9

    .line 85
    :cond_1b
    return-void
.end method


# virtual methods
.method blacklist dumpTransportSpecificFields(Landroid/net/connectivity/android/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 155
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSsids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 158
    :cond_20
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 140
    invoke-super {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 141
    return v1

    .line 144
    :cond_8
    instance-of v0, p1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    if-nez v0, :cond_d

    .line 145
    return v1

    .line 148
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    .line 149
    .local v0, "rhs":Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
    iget-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    iget-object v2, v0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getCapabilitiesMatchCriteria()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 173
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSsids()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 135
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 124
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 126
    .local v0, "result":Landroid/os/PersistableBundle;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->STRING_SERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 127
    invoke-static {v1, v2}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 128
    .local v1, "ssidsBundle":Landroid/os/PersistableBundle;
    const-string v2, "mSsids"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 130
    return-object v0
.end method

.method protected blacklist validate()V
    .registers 2

    .line 75
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validate()V

    .line 76
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-static {v0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->validateSsids(Ljava/util/Set;)V

    .line 77
    return-void
.end method
