.class public final Landroid/telephony/ActivityStatsTechSpecificInfo;
.super Ljava/lang/Object;
.source "ActivityStatsTechSpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ActivityStatsTechSpecificInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TX_POWER_LEVELS:I = 0x5


# instance fields
.field private blacklist mFrequencyRange:I

.field private blacklist mRat:I

.field private blacklist mRxTimeMs:I

.field private blacklist mTxTimeMs:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 222
    new-instance v0, Landroid/telephony/ActivityStatsTechSpecificInfo$1;

    invoke-direct {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ActivityStatsTechSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II[II)V
    .registers 7
    .param p1, "rat"    # I
    .param p2, "frequencyRange"    # I
    .param p3, "txTimeMs"    # [I
    .param p4, "rxTimeMs"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    array-length v0, p3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    .line 51
    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    .line 52
    iput p2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    .line 53
    iput-object p3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    .line 54
    iput p4, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    .line 55
    return-void

    .line 49
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "txTimeMs must have length == TX_POWER_LEVELS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$isTxPowerEmpty$1(I)Z
    .registers 2
    .param p0, "i"    # I

    .line 150
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic blacklist lambda$isTxPowerValid$0(I)Z
    .registers 2
    .param p0, "i"    # I

    .line 137
    if-ltz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist ratToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 178
    packed-switch p0, :pswitch_data_1e

    .line 194
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :pswitch_8
    const-string v0, "NGRAN"

    return-object v0

    .line 190
    :pswitch_b
    const-string v0, "IWLAN"

    return-object v0

    .line 188
    :pswitch_e
    const-string v0, "CDMA2000"

    return-object v0

    .line 186
    :pswitch_11
    const-string v0, "EUTRAN"

    return-object v0

    .line 184
    :pswitch_14
    const-string v0, "UTRAN"

    return-object v0

    .line 182
    :pswitch_17
    const-string v0, "GERAN"

    return-object v0

    .line 180
    :pswitch_1a
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 169
    :cond_4
    instance-of v1, p1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 170
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 171
    .local v1, "that":Landroid/telephony/ActivityStatsTechSpecificInfo;
    iget v3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    iget v4, v1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    iget v4, v1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    iget-object v4, v1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    .line 173
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    iget v4, v1, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 171
    :goto_2b
    return v0
.end method

.method public blacklist getFrequencyRange()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    return v0
.end method

.method public blacklist getRat()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    return v0
.end method

.method public blacklist getReceiveTimeMillis()J
    .registers 3

    .line 103
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getTransmitTimeMillis(I)J
    .registers 4
    .param p1, "powerLevel"    # I

    .line 84
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getTransmitTimeMillis()[I
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 161
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 162
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 163
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist isRxPowerEmpty()Z
    .registers 5

    .line 156
    invoke-virtual {p0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isRxPowerValid()Z
    .registers 5

    .line 142
    invoke-virtual {p0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isTxPowerEmpty()Z
    .registers 3

    .line 147
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    array-length v0, v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    .line 150
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 151
    .local v0, "isTxPowerEmpty":Z
    :goto_1e
    return v0
.end method

.method public blacklist isTxPowerValid()Z
    .registers 3

    .line 137
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setFrequencyRange(I)V
    .registers 2
    .param p1, "frequencyRange"    # I

    .line 112
    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    .line 113
    return-void
.end method

.method public blacklist setRat(I)V
    .registers 2
    .param p1, "rat"    # I

    .line 107
    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    .line 108
    return-void
.end method

.method public blacklist setReceiveTimeMillis(I)V
    .registers 2
    .param p1, "receiveTimeMillis"    # I

    .line 117
    iput p1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    .line 118
    return-void
.end method

.method public blacklist setReceiveTimeMillis(J)V
    .registers 4
    .param p1, "receiveTimeMillis"    # J

    .line 127
    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    .line 128
    return-void
.end method

.method public blacklist setTransmitTimeMillis([I)V
    .registers 3
    .param p1, "txTimeMs"    # [I

    .line 132
    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    .line 133
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    const-string/jumbo v1, "{mRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    .line 202
    invoke-static {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->ratToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    const-string v1, ",mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    .line 204
    invoke-static {v1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string v1, ",mTxTimeMs[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    .line 206
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    const-string v1, ",mRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 241
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mFrequencyRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mTxTimeMs:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 244
    iget v0, p0, Landroid/telephony/ActivityStatsTechSpecificInfo;->mRxTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    return-void
.end method
