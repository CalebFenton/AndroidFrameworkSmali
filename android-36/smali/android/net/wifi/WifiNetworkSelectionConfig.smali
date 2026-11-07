.class public final Landroid/net/wifi/WifiNetworkSelectionConfig;
.super Ljava/lang/Object;
.source "WifiNetworkSelectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiNetworkSelectionConfig$Builder;,
        Landroid/net/wifi/WifiNetworkSelectionConfig$FrequencyWeight;,
        Landroid/net/wifi/WifiNetworkSelectionConfig$AssociatedNetworkSelectionOverride;
    }
.end annotation


# static fields
.field public static final whitelist ASSOCIATED_NETWORK_SELECTION_OVERRIDE_DISABLED:I = 0x2

.field public static final whitelist ASSOCIATED_NETWORK_SELECTION_OVERRIDE_ENABLED:I = 0x1

.field public static final whitelist ASSOCIATED_NETWORK_SELECTION_OVERRIDE_NONE:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiNetworkSelectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FREQUENCY_WEIGHT_HIGH:I = 0x1

.field public static final whitelist FREQUENCY_WEIGHT_LOW:I


# instance fields
.field private blacklist mAssociatedNetworkSelectionOverride:I

.field private blacklist mFrequencyWeights:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastSelectionWeightEnabled:Z

.field private blacklist mRssi2Thresholds:[I

.field private blacklist mRssi5Thresholds:[I

.field private blacklist mRssi6Thresholds:[I

.field private blacklist mSufficiencyCheckEnabledWhenScreenOff:Z

.field private blacklist mSufficiencyCheckEnabledWhenScreenOn:Z

.field private blacklist mUserConnectChoiceOverrideEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRssi2Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;)[I
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssi5Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;)[I
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssi6Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;)[I
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAssociatedNetworkSelectionOverride(Landroid/net/wifi/WifiNetworkSelectionConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrequencyWeights(Landroid/net/wifi/WifiNetworkSelectionConfig;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastSelectionWeightEnabled(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRssi2Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;[I)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRssi5Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;[I)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRssi6Thresholds(Landroid/net/wifi/WifiNetworkSelectionConfig;[I)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSufficiencyCheckEnabledWhenScreenOff(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSufficiencyCheckEnabledWhenScreenOn(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserConnectChoiceOverrideEnabled(Landroid/net/wifi/WifiNetworkSelectionConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidAssociatedNetworkSelectionOverride(I)Z
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidAssociatedNetworkSelectionOverride(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidBand(I)Z
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidBand(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidFrequencyWeightArray(Landroid/util/SparseArray;)Z
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidFrequencyWeightArray(Landroid/util/SparseArray;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidRssiThresholdArray([I)Z
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidRssiThresholdArray([I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 530
    new-instance v0, Landroid/net/wifi/WifiNetworkSelectionConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNetworkSelectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    .line 89
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    .line 90
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    .line 91
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    .line 95
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    .line 98
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    .line 101
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiNetworkSelectionConfig-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSelectionConfig;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/WifiNetworkSelectionConfig;)V
    .registers 4
    .param p1, "that"    # Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    .line 89
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    .line 90
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    .line 91
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    .line 95
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    .line 98
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    .line 101
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    .line 113
    iget-boolean v0, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    .line 114
    iget-boolean v0, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    .line 115
    iget v0, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    iput v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    .line 116
    iget-boolean v0, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    .line 117
    iget-boolean v0, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    .line 118
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    .line 119
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    .line 120
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    .line 121
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiNetworkSelectionConfig;Landroid/net/wifi/WifiNetworkSelectionConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;-><init>(Landroid/net/wifi/WifiNetworkSelectionConfig;)V

    return-void
.end method

.method public static blacklist isRssiThresholdResetArray([I)Z
    .registers 5
    .param p0, "thresholds"    # [I

    .line 206
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_d

    aget v3, p0, v2

    .line 207
    .local v3, "value":I
    if-eqz v3, :cond_a

    return v1

    .line 206
    .end local v3    # "value":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 209
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isValidAssociatedNetworkSelectionOverride(I)Z
    .registers 2
    .param p0, "override"    # I

    .line 160
    if-ltz p0, :cond_7

    const/4 v0, 0x2

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist isValidBand(I)Z
    .registers 2
    .param p0, "band"    # I

    .line 165
    sparse-switch p0, :sswitch_data_8

    .line 171
    const/4 v0, 0x0

    return v0

    .line 169
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x8 -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist isValidFrequencyWeightArray(Landroid/util/SparseArray;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 192
    .local p0, "weights":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 194
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1f

    .line 195
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 196
    .local v2, "value":I
    if-ltz v2, :cond_1e

    if-le v2, v3, :cond_1b

    goto :goto_1e

    .line 194
    .end local v2    # "value":I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 196
    .restart local v2    # "value":I
    :cond_1e
    :goto_1e
    return v0

    .line 198
    .end local v1    # "i":I
    .end local v2    # "value":I
    :cond_1f
    return v3
.end method

.method private static blacklist isValidRssiThresholdArray([I)Z
    .registers 6
    .param p0, "thresholds"    # [I

    .line 176
    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    goto :goto_2c

    .line 178
    :cond_8
    invoke-static {p0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isRssiThresholdResetArray([I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 179
    const/16 v1, -0x7f

    .line 180
    .local v1, "low":I
    const/16 v2, 0xc8

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 181
    .local v2, "high":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    array-length v4, p0

    if-ge v3, v4, :cond_2a

    .line 182
    aget v4, p0, v3

    if-le v4, v1, :cond_29

    aget v4, p0, v3

    if-le v4, v2, :cond_24

    goto :goto_29

    .line 185
    :cond_24
    aget v1, p0, v3

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 183
    :cond_29
    :goto_29
    return v0

    .line 188
    .end local v1    # "low":I
    .end local v2    # "high":I
    .end local v3    # "i":I
    :cond_2a
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_2c
    :goto_2c
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 512
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 513
    return v0

    .line 515
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/WifiNetworkSelectionConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 516
    return v2

    .line 518
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/WifiNetworkSelectionConfig;

    .line 519
    .local v1, "lhs":Landroid/net/wifi/WifiNetworkSelectionConfig;
    iget-boolean v3, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    iget-boolean v4, v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    if-ne v3, v4, :cond_54

    iget-boolean v3, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    iget-boolean v4, v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    if-ne v3, v4, :cond_54

    iget v3, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    iget v4, v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    if-ne v3, v4, :cond_54

    iget-boolean v3, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    if-ne v3, v4, :cond_54

    iget-boolean v3, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    if-ne v3, v4, :cond_54

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    .line 524
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    .line 525
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    .line 526
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    .line 527
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_54

    goto :goto_55

    :cond_54
    move v0, v2

    .line 519
    :goto_55
    return v0
.end method

.method public whitelist getAssociatedNetworkSelectionOverride()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    return v0
.end method

.method public whitelist getFrequencyWeights()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getRssiThresholds(I)[I
    .registers 5
    .param p1, "band"    # I

    .line 231
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidBand(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 234
    sparse-switch p1, :sswitch_data_44

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Did not find RSSI thresholds for band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :sswitch_22
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    return-object v0

    .line 238
    :sswitch_25
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    return-object v0

    .line 236
    :sswitch_28
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    return-object v0

    .line 232
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_25
        0x8 -> :sswitch_22
    .end sparse-switch
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 503
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    .line 504
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    .line 505
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    .line 506
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    .line 507
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 503
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isLastSelectionWeightEnabled()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    return v0
.end method

.method public whitelist isSufficiencyCheckEnabledWhenScreenOff()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    return v0
.end method

.method public whitelist isSufficiencyCheckEnabledWhenScreenOn()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    return v0
.end method

.method public whitelist isUserConnectChoiceOverrideEnabled()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 217
    iget v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    invoke-static {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidAssociatedNetworkSelectionOverride(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    .line 218
    invoke-static {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidRssiThresholdArray([I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    .line 219
    invoke-static {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidRssiThresholdArray([I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    .line 220
    invoke-static {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidRssiThresholdArray([I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    .line 221
    invoke-static {v0}, Landroid/net/wifi/WifiNetworkSelectionConfig;->isValidFrequencyWeightArray(Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 217
    :goto_2b
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mSufficiencyCheckEnabledWhenScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 576
    const-string v2, ", mSufficiencyCheckEnabledWhenScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 578
    const-string v2, ", mAssociatedNetworkSelectionOverride="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 580
    const-string v2, ", mUserConnectChoiceOverrideEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    .line 581
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 582
    const-string v2, ", mLastSelectionWeightEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    .line 583
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 584
    const-string v2, ", mRssi2Thresholds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    .line 585
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    const-string v2, ", mRssi5Thresholds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    .line 587
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 588
    const-string v2, ", mRssi6Thresholds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    .line 589
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 590
    const-string v2, ", mFrequencyWeights="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    .line 591
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 560
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOff:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 561
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mSufficiencyCheckEnabledWhenScreenOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 562
    iget v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mAssociatedNetworkSelectionOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mUserConnectChoiceOverrideEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 564
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mLastSelectionWeightEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 565
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi2Thresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 566
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi5Thresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 567
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mRssi6Thresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 568
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSelectionConfig;->mFrequencyWeights:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 569
    return-void
.end method
