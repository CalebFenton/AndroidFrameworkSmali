.class public abstract Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
.super Ljava/lang/Object;
.source "VcnUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnUnderlyingNetworkTemplate$MatchCriteria;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_METERED_MATCH_CRITERIA:I = 0x0

.field public static final blacklist DEFAULT_MIN_BANDWIDTH_KBPS:I = 0x0

.field public static final whitelist MATCH_ANY:I = 0x0

.field private static final blacklist MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MATCH_FORBIDDEN:I = 0x2

.field public static final whitelist MATCH_REQUIRED:I = 0x1

.field static final blacklist METERED_MATCH_KEY:Ljava/lang/String; = "mMeteredMatchCriteria"

.field static final blacklist MIN_ENTRY_DOWNSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinEntryDownstreamBandwidthKbps"

.field static final blacklist MIN_ENTRY_UPSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinEntryUpstreamBandwidthKbps"

.field static final blacklist MIN_EXIT_DOWNSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinExitDownstreamBandwidthKbps"

.field static final blacklist MIN_EXIT_UPSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinExitUpstreamBandwidthKbps"

.field static final blacklist NETWORK_PRIORITY_TYPE_CELL:I = 0x2

.field private static final blacklist NETWORK_PRIORITY_TYPE_KEY:Ljava/lang/String; = "mNetworkPriorityType"

.field static final blacklist NETWORK_PRIORITY_TYPE_WIFI:I = 0x1


# instance fields
.field private final blacklist mMeteredMatchCriteria:I

.field private final blacklist mMinEntryDownstreamBandwidthKbps:I

.field private final blacklist mMinEntryUpstreamBandwidthKbps:I

.field private final blacklist mMinExitDownstreamBandwidthKbps:I

.field private final blacklist mMinExitUpstreamBandwidthKbps:I

.field private final blacklist mNetworkPriorityType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    .line 79
    sget-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "MATCH_ANY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "MATCH_REQUIRED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "MATCH_FORBIDDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method constructor blacklist <init>(IIIIII)V
    .registers 7
    .param p1, "networkPriorityType"    # I
    .param p2, "meteredMatchCriteria"    # I
    .param p3, "minEntryUpstreamBandwidthKbps"    # I
    .param p4, "minExitUpstreamBandwidthKbps"    # I
    .param p5, "minEntryDownstreamBandwidthKbps"    # I
    .param p6, "minExitDownstreamBandwidthKbps"    # I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    .line 128
    iput p2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    .line 129
    iput p3, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    .line 130
    iput p4, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    .line 131
    iput p5, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    .line 132
    iput p6, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    .line 133
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    .registers 5
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 165
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    const-string v0, "mNetworkPriorityType"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "networkPriorityType":I
    packed-switch v0, :pswitch_data_32

    .line 174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid networkPriorityType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :pswitch_27
    invoke-static {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    return-object v1

    .line 170
    :pswitch_2c
    invoke-static {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_27
    .end packed-switch
.end method

.method static blacklist getMatchCriteriaString(I)Ljava/lang/String;
    .registers 2
    .param p0, "matchCriteria"    # I

    .line 227
    sget-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getNameString(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getNameString(Landroid/util/SparseArray;I)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    .local p0, "toStringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static blacklist validateMatchCriteria(ILjava/lang/String;)V
    .registers 5
    .param p0, "matchCriteria"    # I
    .param p1, "matchingCapability"    # Ljava/lang/String;

    .line 137
    sget-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    .line 138
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid matching criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 140
    return-void
.end method

.method static blacklist validateMinBandwidthKbps(II)V
    .registers 6
    .param p0, "minEntryBandwidth"    # I
    .param p1, "minExitBandwidth"    # I

    .line 144
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "Invalid minEntryBandwidth, must be >= 0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 146
    if-ltz p1, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    const-string v3, "Invalid minExitBandwidth, must be >= 0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 148
    if-lt p0, p1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    const-string v1, "Minimum entry bandwidth must be >= exit bandwidth"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 151
    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/net/connectivity/android/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->increaseIndent()Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 242
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    if-eqz v0, :cond_41

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMeteredMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    invoke-static {v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 245
    :cond_41
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    if-eqz v0, :cond_5d

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinEntryUpstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 248
    :cond_5d
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    if-eqz v0, :cond_79

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinExitUpstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 251
    :cond_79
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    if-eqz v0, :cond_95

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinEntryDownstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 254
    :cond_95
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    if-eqz v0, :cond_b1

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinExitDownstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :cond_b1
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->dumpTransportSpecificFields(Landroid/net/connectivity/android/util/IndentingPrintWriter;)V

    .line 259
    invoke-virtual {p1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->decreaseIndent()Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 260
    return-void
.end method

.method abstract blacklist dumpTransportSpecificFields(Landroid/net/connectivity/android/util/IndentingPrintWriter;)V
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 207
    instance-of v0, p1, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 208
    return v1

    .line 211
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 212
    .local v0, "rhs":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    if-ne v2, v3, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method public abstract blacklist getCapabilitiesMatchCriteria()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getMetered()I
    .registers 2

    .line 269
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    return v0
.end method

.method public whitelist getMinEntryDownstreamBandwidthKbps()I
    .registers 2

    .line 299
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    return v0
.end method

.method public whitelist getMinEntryUpstreamBandwidthKbps()I
    .registers 2

    .line 279
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    return v0
.end method

.method public whitelist getMinExitDownstreamBandwidthKbps()I
    .registers 2

    .line 309
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    return v0
.end method

.method public whitelist getMinExitUpstreamBandwidthKbps()I
    .registers 2

    .line 289
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 196
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 196
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 182
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 184
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "mNetworkPriorityType"

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const-string v1, "mMeteredMatchCriteria"

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string v1, "mMinEntryUpstreamBandwidthKbps"

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v1, "mMinExitUpstreamBandwidthKbps"

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v1, "mMinEntryDownstreamBandwidthKbps"

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v1, "mMinExitDownstreamBandwidthKbps"

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 191
    return-object v0
.end method

.method protected blacklist validate()V
    .registers 3

    .line 155
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    const-string v1, "mMeteredMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 156
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    invoke-static {v0, v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 157
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    invoke-static {v0, v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 158
    return-void
.end method
