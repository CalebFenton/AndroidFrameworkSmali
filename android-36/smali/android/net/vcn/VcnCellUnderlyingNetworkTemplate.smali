.class public final Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
.super Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
.source "VcnCellUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_NETWORK_PLMN_IDS_KEY:Ljava/lang/String; = "mAllowedNetworkPlmnIds"

.field private static final blacklist ALLOWED_SPECIFIC_CARRIER_IDS_KEY:Ljava/lang/String; = "mAllowedSpecificCarrierIds"

.field private static final blacklist CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CAPABILITIES_MATCH_CRITERIA_KEY:Ljava/lang/String; = "mCapabilitiesMatchCriteria"

.field private static final blacklist DEFAULT_OPPORTUNISTIC_MATCH_CRITERIA:I = 0x0

.field private static final blacklist DEFAULT_ROAMING_MATCH_CRITERIA:I = 0x0

.field private static final blacklist OPPORTUNISTIC_MATCH_KEY:Ljava/lang/String; = "mOpportunisticMatchCriteria"

.field private static final blacklist ROAMING_MATCH_KEY:Ljava/lang/String; = "mRoamingMatchCriteria"


# instance fields
.field private final blacklist mAllowedNetworkPlmnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedSpecificCarrierIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCapabilitiesMatchCriteria:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOpportunisticMatchCriteria:I

.field private final blacklist mRoamingMatchCriteria:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetCAPABILITIES_MATCH_CRITERIA_DEFAULT()Ljava/util/Map;
    .registers 1

    sget-object v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidatePlmnIds(Ljava/util/Set;)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validatePlmnIds(Ljava/util/Set;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v0, "capsMatchCriteria":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;

    .line 91
    .end local v0    # "capsMatchCriteria":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-void
.end method

.method private constructor blacklist <init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;)V
    .registers 18
    .param p1, "meteredMatchCriteria"    # I
    .param p2, "minEntryUpstreamBandwidthKbps"    # I
    .param p3, "minExitUpstreamBandwidthKbps"    # I
    .param p4, "minEntryDownstreamBandwidthKbps"    # I
    .param p5, "minExitDownstreamBandwidthKbps"    # I
    .param p8, "roamingMatchCriteria"    # I
    .param p9, "opportunisticMatchCriteria"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p6, "allowedNetworkPlmnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p7, "allowedSpecificCarrierIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p10, "capabilitiesMatchCriteria":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;-><init>(IIIIII)V

    .line 111
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    .line 112
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    .line 113
    iput p8, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    .line 114
    move/from16 v1, p9

    iput v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    .line 115
    new-instance v2, Ljava/util/HashMap;

    move-object/from16 v3, p10

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    .line 117
    invoke-virtual {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validate()V

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;)V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    .registers 15
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 172
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v0, "mMeteredMatchCriteria"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 176
    .local v2, "meteredMatchCriteria":I
    nop

    .line 177
    const-string v0, "mMinEntryUpstreamBandwidthKbps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 178
    .local v3, "minEntryUpstreamBandwidthKbps":I
    nop

    .line 179
    const-string v0, "mMinExitUpstreamBandwidthKbps"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 180
    .local v4, "minExitUpstreamBandwidthKbps":I
    nop

    .line 181
    const-string v0, "mMinEntryDownstreamBandwidthKbps"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 182
    .local v5, "minEntryDownstreamBandwidthKbps":I
    nop

    .line 183
    const-string v0, "mMinExitDownstreamBandwidthKbps"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 185
    .local v6, "minExitDownstreamBandwidthKbps":I
    nop

    .line 186
    const-string v0, "mAllowedNetworkPlmnIds"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 187
    .local v0, "plmnIdsBundle":Landroid/os/PersistableBundle;
    const-string v1, "plmnIdsBundle is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    new-instance v7, Landroid/util/ArraySet;

    sget-object v1, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->STRING_DESERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;

    .line 190
    invoke-static {v0, v1}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 192
    .local v7, "allowedNetworkPlmnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 193
    const-string v1, "mAllowedSpecificCarrierIds"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v12

    .line 194
    .local v12, "specificCarrierIdsBundle":Landroid/os/PersistableBundle;
    const-string v1, "specificCarrierIdsBundle is null"

    invoke-static {v12, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    new-instance v8, Landroid/util/ArraySet;

    sget-object v1, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;

    .line 197
    invoke-static {v12, v1}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 200
    .local v8, "allowedSpecificCarrierIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    nop

    .line 201
    const-string v1, "mCapabilitiesMatchCriteria"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v13

    .line 203
    .local v13, "capabilitiesMatchCriteriaBundle":Landroid/os/PersistableBundle;
    if-nez v13, :cond_63

    .line 204
    sget-object v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;

    move-object v11, v1

    .local v1, "capabilitiesMatchCriteria":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_6c

    .line 206
    .end local v1    # "capabilitiesMatchCriteria":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_63
    sget-object v1, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;

    sget-object v9, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;

    .line 207
    invoke-static {v13, v1, v9}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toMap(Landroid/os/PersistableBundle;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object v11, v1

    .line 213
    .local v11, "capabilitiesMatchCriteria":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_6c
    const-string v1, "mRoamingMatchCriteria"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 214
    .local v9, "roamingMatchCriteria":I
    const-string v1, "mOpportunisticMatchCriteria"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 216
    .local v10, "opportunisticMatchCriteria":I
    new-instance v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    invoke-direct/range {v1 .. v11}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;)V

    return-object v1
.end method

.method private static blacklist validateCapabilitiesMatchCriteria(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p0, "capabilitiesMatchCriteria":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v0, "capabilitiesMatchCriteria is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "requiredCapabilityFound":Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 151
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 152
    .local v3, "capability":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 154
    .local v4, "matchCriteria":I
    sget-object v5, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkCapability "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "out of range"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 159
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v5, 0x0

    :goto_6f
    or-int/2addr v0, v5

    .line 160
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "capability":I
    .end local v4    # "matchCriteria":I
    goto :goto_e

    .line 162
    :cond_71
    if-eqz v0, :cond_74

    .line 165
    return-void

    .line 163
    :cond_74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No required capabilities found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist validatePlmnIds(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p0, "matchingOperatorPlmnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "matchingOperatorPlmnIds is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2c

    :cond_23
    const-string v2, "[0-9]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 138
    goto :goto_9

    .line 140
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found invalid PLMN ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    .end local v1    # "id":Ljava/lang/String;
    :cond_45
    return-void
.end method


# virtual methods
.method blacklist dumpTransportSpecificFields(Landroid/net/connectivity/android/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 394
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedNetworkPlmnIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 397
    :cond_20
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedSpecificCarrierIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 400
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCapabilitiesMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 401
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    if-eqz v0, :cond_78

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRoamingMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    invoke-static {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 404
    :cond_78
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    if-eqz v0, :cond_98

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpportunisticMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    .line 407
    invoke-static {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 409
    :cond_98
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 375
    invoke-super {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 376
    return v1

    .line 379
    :cond_8
    instance-of v0, p1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    if-nez v0, :cond_d

    .line 380
    return v1

    .line 383
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    .line 384
    .local v0, "rhs":Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    .line 385
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    .line 386
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    if-ne v2, v3, :cond_3c

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    if-ne v2, v3, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    nop

    .line 384
    :goto_3d
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

    .line 359
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCbs()I
    .registers 3

    .line 306
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getDun()I
    .registers 3

    .line 316
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getIms()I
    .registers 3

    .line 325
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getInternet()I
    .registers 3

    .line 334
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getMms()I
    .registers 3

    .line 343
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getOperatorPlmnIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOpportunistic()I
    .registers 2

    .line 296
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    return v0
.end method

.method public whitelist getRcs()I
    .registers 3

    .line 353
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getRoaming()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    return v0
.end method

.method public whitelist getSimSpecificCarrierIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 364
    nop

    .line 365
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget-object v4, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    .line 370
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 364
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 7

    .line 234
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 236
    .local v0, "result":Landroid/os/PersistableBundle;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->STRING_SERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 237
    invoke-static {v1, v2}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 239
    .local v1, "plmnIdsBundle":Landroid/os/PersistableBundle;
    const-string v2, "mAllowedNetworkPlmnIds"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 242
    invoke-static {v2, v3}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 244
    .local v2, "specificCarrierIdsBundle":Landroid/os/PersistableBundle;
    const-string v3, "mAllowedSpecificCarrierIds"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 246
    iget-object v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    sget-object v4, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;

    sget-object v5, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 247
    invoke-static {v3, v4, v5}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->fromMap(Ljava/util/Map;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 249
    .local v3, "capabilitiesMatchCriteriaBundle":Landroid/os/PersistableBundle;
    const-string v4, "mCapabilitiesMatchCriteria"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 252
    const-string v4, "mRoamingMatchCriteria"

    iget v5, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v4, "mOpportunisticMatchCriteria"

    iget v5, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 255
    return-object v0
.end method

.method protected blacklist validate()V
    .registers 3

    .line 123
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validate()V

    .line 124
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validatePlmnIds(Ljava/util/Set;)V

    .line 125
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-static {v0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateCapabilitiesMatchCriteria(Ljava/util/Map;)V

    .line 126
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    const-string v1, "matchingCarrierIds is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    const-string v1, "mRoamingMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 128
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    const-string v1, "mOpportunisticMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 129
    return-void
.end method
