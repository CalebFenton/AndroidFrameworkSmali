.class public final Landroid/location/CorrelationVector;
.super Ljava/lang/Object;
.source "CorrelationVector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/CorrelationVector$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/CorrelationVector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrequencyOffsetMetersPerSecond:D

.field private final blacklist mMagnitude:[I

.field private final blacklist mSamplingStartMeters:D

.field private final blacklist mSamplingWidthMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/location/CorrelationVector$1;

    invoke-direct {v0}, Landroid/location/CorrelationVector$1;-><init>()V

    sput-object v0, Landroid/location/CorrelationVector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/CorrelationVector$Builder;)V
    .registers 9
    .param p1, "builder"    # Landroid/location/CorrelationVector$Builder;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Landroid/location/CorrelationVector$Builder;->-$$Nest$fgetmMagnitude(Landroid/location/CorrelationVector$Builder;)[I

    move-result-object v0

    const-string v1, "Magnitude array must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Landroid/location/CorrelationVector$Builder;->-$$Nest$fgetmMagnitude(Landroid/location/CorrelationVector$Builder;)[I

    move-result-object v0

    array-length v0, v0

    const-string v1, "Magnitude array must have non-zero length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 93
    invoke-static {p1}, Landroid/location/CorrelationVector$Builder;->-$$Nest$fgetmFrequencyOffsetMetersPerSecond(Landroid/location/CorrelationVector$Builder;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    move v0, v4

    :goto_25
    const-string v5, "FrequencyOffsetMetersPerSecond must be non-negative (greater than or equal to 0)"

    invoke-static {v0, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 95
    invoke-static {p1}, Landroid/location/CorrelationVector$Builder;->-$$Nest$fgetmSamplingWidthMeters(Landroid/location/CorrelationVector$Builder;)D

    move-result-wide v5

    cmpl-double v0, v5, v2

    if-lez v0, :cond_33

    goto :goto_34

    :cond_33
    move v1, v4

    :goto_34
    const-string v0, "SamplingWidthMeters must be positive (greater than 0)"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 97
    invoke-static {p1}, Landroid/location/CorrelationVector$Builder;->-$$Nest$fgetmMagnitude(Landroid/location/CorrelationVector$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/location/CorrelationVector;->mMagnitude:[I

    .line 98
    invoke-static {p1}, Landroid/location/CorrelationVector$Builder;->-$$Nest$fgetmFrequencyOffsetMetersPerSecond(Landroid/location/CorrelationVector$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/CorrelationVector;->mFrequencyOffsetMetersPerSecond:D

    .line 99
    invoke-static {p1}, Landroid/location/CorrelationVector$Builder;->-$$Nest$fgetmSamplingWidthMeters(Landroid/location/CorrelationVector$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/CorrelationVector;->mSamplingWidthMeters:D

    .line 100
    invoke-static {p1}, Landroid/location/CorrelationVector$Builder;->-$$Nest$fgetmSamplingStartMeters(Landroid/location/CorrelationVector$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/CorrelationVector;->mSamplingStartMeters:D

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/CorrelationVector$Builder;Landroid/location/CorrelationVector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/CorrelationVector;-><init>(Landroid/location/CorrelationVector$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/CorrelationVector;->mSamplingWidthMeters:D

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/CorrelationVector;->mSamplingStartMeters:D

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/CorrelationVector;->mFrequencyOffsetMetersPerSecond:D

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/location/CorrelationVector;->mMagnitude:[I

    .line 108
    iget-object v0, p0, Landroid/location/CorrelationVector;->mMagnitude:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/location/CorrelationVector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/CorrelationVector;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 159
    return v0

    .line 161
    :cond_4
    instance-of v1, p1, Landroid/location/CorrelationVector;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 162
    return v2

    .line 164
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/CorrelationVector;

    .line 165
    .local v1, "c":Landroid/location/CorrelationVector;
    iget-object v3, p0, Landroid/location/CorrelationVector;->mMagnitude:[I

    invoke-virtual {v1}, Landroid/location/CorrelationVector;->getMagnitude()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-wide v3, p0, Landroid/location/CorrelationVector;->mSamplingWidthMeters:D

    .line 166
    invoke-virtual {v1}, Landroid/location/CorrelationVector;->getSamplingWidthMeters()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_3e

    iget-wide v3, p0, Landroid/location/CorrelationVector;->mSamplingStartMeters:D

    .line 167
    invoke-virtual {v1}, Landroid/location/CorrelationVector;->getSamplingStartMeters()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_3e

    iget-wide v3, p0, Landroid/location/CorrelationVector;->mFrequencyOffsetMetersPerSecond:D

    .line 169
    invoke-virtual {v1}, Landroid/location/CorrelationVector;->getFrequencyOffsetMetersPerSecond()D

    move-result-wide v5

    .line 168
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 165
    :goto_3f
    return v0
.end method

.method public whitelist getFrequencyOffsetMetersPerSecond()D
    .registers 3

    .line 70
    iget-wide v0, p0, Landroid/location/CorrelationVector;->mFrequencyOffsetMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist getMagnitude()[I
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/location/CorrelationVector;->mMagnitude:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public whitelist getSamplingStartMeters()D
    .registers 3

    .line 62
    iget-wide v0, p0, Landroid/location/CorrelationVector;->mSamplingStartMeters:D

    return-wide v0
.end method

.method public whitelist getSamplingWidthMeters()D
    .registers 3

    .line 49
    iget-wide v0, p0, Landroid/location/CorrelationVector;->mSamplingWidthMeters:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 174
    iget-wide v0, p0, Landroid/location/CorrelationVector;->mSamplingWidthMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/CorrelationVector;->mSamplingStartMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/CorrelationVector;->mFrequencyOffsetMetersPerSecond:D

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Landroid/location/CorrelationVector;->mMagnitude:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 174
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CorrelationVector{FrequencyOffsetMetersPerSecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/CorrelationVector;->mFrequencyOffsetMetersPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SamplingWidthMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/CorrelationVector;->mSamplingWidthMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SamplingStartMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/CorrelationVector;->mSamplingStartMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Magnitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/CorrelationVector;->mMagnitude:[I

    .line 139
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget-wide v0, p0, Landroid/location/CorrelationVector;->mSamplingWidthMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 146
    iget-wide v0, p0, Landroid/location/CorrelationVector;->mSamplingStartMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 147
    iget-wide v0, p0, Landroid/location/CorrelationVector;->mFrequencyOffsetMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 148
    iget-object v0, p0, Landroid/location/CorrelationVector;->mMagnitude:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/location/CorrelationVector;->mMagnitude:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 150
    return-void
.end method
