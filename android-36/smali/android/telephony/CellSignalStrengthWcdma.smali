.class public final Landroid/telephony/CellSignalStrengthWcdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthWcdma$LevelCalculationMethod;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist DEFAULT_LEVEL_CALCULATION_METHOD:Ljava/lang/String; = "rssi"

.field public static final blacklist LEVEL_CALCULATION_METHOD_RSCP:Ljava/lang/String; = "rscp"

.field public static final blacklist LEVEL_CALCULATION_METHOD_RSSI:Ljava/lang/String; = "rssi"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthWcdma"

.field private static final blacklist WCDMA_RSCP_GOOD:I = -0x5f

.field private static final blacklist WCDMA_RSCP_GREAT:I = -0x55

.field private static final blacklist WCDMA_RSCP_MAX:I = -0x18

.field private static final blacklist WCDMA_RSCP_MIN:I = -0x78

.field private static final blacklist WCDMA_RSCP_MODERATE:I = -0x69

.field private static final blacklist WCDMA_RSCP_POOR:I = -0x73

.field private static final blacklist WCDMA_RSSI_GOOD:I = -0x57

.field private static final blacklist WCDMA_RSSI_GREAT:I = -0x4d

.field private static final blacklist WCDMA_RSSI_MAX:I = -0x33

.field private static final blacklist WCDMA_RSSI_MIN:I = -0x71

.field private static final blacklist WCDMA_RSSI_MODERATE:I = -0x61

.field private static final blacklist WCDMA_RSSI_POOR:I = -0x6b

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

.field private static final blacklist sRscpThresholds:[I

.field private static final blacklist sRssiThresholds:[I


# instance fields
.field private greylist mBitErrorRate:I

.field private blacklist mEcNo:I

.field private blacklist mLevel:I

.field private blacklist mRscp:I

.field private blacklist mRssi:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 48
    const/16 v0, -0x57

    const/16 v1, -0x4d

    const/16 v2, -0x6b

    const/16 v3, -0x61

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sRssiThresholds:[I

    .line 58
    const/16 v0, -0x5f

    const/16 v1, -0x55

    const/16 v2, -0x73

    const/16 v3, -0x69

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    .line 251
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

    .line 316
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .registers 8
    .param p1, "rssi"    # I
    .param p2, "ber"    # I
    .param p3, "rscp"    # I
    .param p4, "ecno"    # I

    .line 89
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 90
    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    .line 91
    const/4 v0, 0x7

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(IIII)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 92
    const/16 v0, -0x78

    const/16 v1, -0x18

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    .line 93
    const/4 v0, 0x1

    invoke-static {p4, v1, v0}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 95
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 299
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 306
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthWcdma-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthWcdma;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 98
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 99
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;->copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V

    .line 100
    return-void
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 333
    const-string v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 340
    const-string v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 36
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthWcdma;
    .registers 2

    .line 114
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 104
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    .line 105
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 106
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    .line 107
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    .line 108
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 109
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 261
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthWcdma;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 262
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    .line 264
    .local v0, "s":Landroid/telephony/CellSignalStrengthWcdma;
    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    if-ne v2, v3, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method public whitelist getAsuLevel()I
    .registers 3

    .line 199
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_e

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0

    .line 202
    :cond_e
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    if-eq v0, v1, :cond_19

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRssiDbm(I)I

    move-result v0

    return v0

    .line 203
    :cond_19
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0
.end method

.method public blacklist getBitErrorRate()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    return v0
.end method

.method public whitelist getDbm()I
    .registers 3

    .line 186
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    return v0

    .line 187
    :cond_a
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    return v0
.end method

.method public whitelist getEcNo()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    return v0
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return v0
.end method

.method public blacklist getRscp()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    return v0
.end method

.method public blacklist getRssi()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 248
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 256
    sget-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o setDefaultValues()V
    .registers 2

    .line 120
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    .line 121
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 122
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    .line 123
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 125
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthWcdma: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ecno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 9
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 140
    const-string/jumbo v0, "rssi"

    if-nez p1, :cond_b

    .line 141
    const-string/jumbo v1, "rssi"

    .line 142
    .local v1, "calcMethod":Ljava/lang/String;
    sget-object v2, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    .local v2, "rscpThresholds":[I
    goto :goto_2a

    .line 145
    .end local v1    # "calcMethod":Ljava/lang/String;
    .end local v2    # "rscpThresholds":[I
    :cond_b
    const-string/jumbo v1, "wcdma_default_signal_strength_measurement_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1    # "calcMethod":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string/jumbo v1, "rssi"

    .line 149
    :cond_1b
    const-string/jumbo v2, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 151
    .restart local v2    # "rscpThresholds":[I
    if-eqz v2, :cond_28

    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2a

    .line 152
    :cond_28
    sget-object v2, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    .line 156
    :cond_2a
    :goto_2a
    const/4 v3, 0x4

    .line 157
    .local v3, "level":I
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_a4

    :cond_33
    goto :goto_47

    :sswitch_34
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    goto :goto_48

    :sswitch_3c
    const-string/jumbo v0, "rscp"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v5

    goto :goto_48

    :goto_47
    const/4 v0, -0x1

    :goto_48
    packed-switch v0, :pswitch_data_ae

    .line 167
    :pswitch_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Level Calculation Method for CellSignalStrengthWcdma = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->loge(Ljava/lang/String;)V

    goto :goto_82

    .line 159
    :pswitch_62
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const/16 v4, -0x78

    if-lt v0, v4, :cond_7f

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const/16 v4, -0x18

    if-le v0, v4, :cond_6f

    goto :goto_7f

    .line 163
    :cond_6f
    :goto_6f
    if-lez v3, :cond_7c

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    if-ge v0, v4, :cond_7c

    add-int/lit8 v3, v3, -0x1

    goto :goto_6f

    .line 164
    :cond_7c
    iput v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 165
    return-void

    .line 160
    :cond_7f
    :goto_7f
    iput v5, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 161
    return-void

    .line 171
    :goto_82
    :pswitch_82
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    const/16 v4, -0x71

    if-lt v0, v4, :cond_a1

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    const/16 v4, -0x33

    if-le v0, v4, :cond_8f

    goto :goto_a1

    .line 175
    :cond_8f
    :goto_8f
    if-lez v3, :cond_9e

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    sget-object v4, Landroid/telephony/CellSignalStrengthWcdma;->sRssiThresholds:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-ge v0, v4, :cond_9e

    add-int/lit8 v3, v3, -0x1

    goto :goto_8f

    .line 176
    :cond_9e
    iput v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 177
    return-void

    .line 172
    :cond_a1
    :goto_a1
    iput v5, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 173
    return-void

    :sswitch_data_a4
    .sparse-switch
        0x358e6e -> :sswitch_3c
        0x359057 -> :sswitch_34
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_62
        :pswitch_4b
        :pswitch_82
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 288
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return-void
.end method
