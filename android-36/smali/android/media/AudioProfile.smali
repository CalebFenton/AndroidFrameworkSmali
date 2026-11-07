.class public Landroid/media/AudioProfile;
.super Ljava/lang/Object;
.source "AudioProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioProfile$EncapsulationType;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_ENCAPSULATION_TYPE_IEC61937:I = 0x1

.field public static final whitelist AUDIO_ENCAPSULATION_TYPE_NONE:I = 0x0

.field public static final whitelist AUDIO_ENCAPSULATION_TYPE_PCM:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChannelIndexMasks:[I

.field private final blacklist mChannelMasks:[I

.field private final blacklist mEncapsulationType:I

.field private final blacklist mFormat:I

.field private final blacklist mSamplingRates:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 213
    new-instance v0, Landroid/media/AudioProfile$1;

    invoke-direct {v0}, Landroid/media/AudioProfile$1;-><init>()V

    sput-object v0, Landroid/media/AudioProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[I[I[II)V
    .registers 6
    .param p1, "format"    # I
    .param p2, "samplingRates"    # [I
    .param p3, "channelMasks"    # [I
    .param p4, "channelIndexMasks"    # [I
    .param p5, "encapsulationType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroid/media/AudioProfile;->mFormat:I

    .line 84
    iput-object p2, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    .line 85
    iput-object p3, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    .line 86
    iput-object p4, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    .line 87
    iput p5, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    .line 88
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioProfile;->mFormat:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    .line 211
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist hasIdenticalElements([I[I)Z
    .registers 5
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 184
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 185
    .local v0, "sortedArray1":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 186
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 187
    .local v1, "sortedArray2":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 188
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    return v2
.end method

.method static synthetic blacklist lambda$toHexString$0(I)Ljava/lang/String;
    .registers 3
    .param p0, "anInt"    # I

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0x%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toHexString([I)Ljava/lang/String;
    .registers 3
    .param p0, "ints"    # [I

    .line 176
    if-eqz p0, :cond_20

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_20

    .line 179
    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/media/AudioProfile$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/AudioProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 180
    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    return-object v0

    .line 177
    :cond_20
    :goto_20
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 147
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_42

    .line 149
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioProfile;

    .line 150
    .local v2, "that":Landroid/media/AudioProfile;
    iget v3, p0, Landroid/media/AudioProfile;->mFormat:I

    iget v4, v2, Landroid/media/AudioProfile;->mFormat:I

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    iget-object v4, v2, Landroid/media/AudioProfile;->mSamplingRates:[I

    .line 151
    invoke-static {v3, v4}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    iget-object v4, v2, Landroid/media/AudioProfile;->mChannelMasks:[I

    .line 152
    invoke-static {v3, v4}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    iget-object v4, v2, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    .line 153
    invoke-static {v3, v4}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    iget v4, v2, Landroid/media/AudioProfile;->mEncapsulationType:I

    if-ne v3, v4, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    .line 150
    :goto_41
    return v0

    .line 147
    .end local v2    # "that":Landroid/media/AudioProfile;
    :cond_42
    :goto_42
    return v1
.end method

.method public whitelist getChannelIndexMasks()[I
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    return-object v0
.end method

.method public whitelist getChannelMasks()[I
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    return-object v0
.end method

.method public whitelist getEncapsulationType()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    return v0
.end method

.method public whitelist getFormat()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/media/AudioProfile;->mFormat:I

    return v0
.end method

.method public whitelist getSampleRates()[I
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 139
    iget v0, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    .line 140
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    array-length v1, v1

    if-lez v1, :cond_28

    .line 162
    const-string v1, ", sampling rates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_28
    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    if-eqz v1, :cond_40

    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    array-length v1, v1

    if-lez v1, :cond_40

    .line 165
    const-string v1, ", channel masks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-static {v2}, Landroid/media/AudioProfile;->toHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_40
    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    if-eqz v1, :cond_58

    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    array-length v1, v1

    if-lez v1, :cond_58

    .line 168
    const-string v1, ", channel index masks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", encapsulation type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 198
    iget v0, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 200
    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 201
    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 202
    iget v0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    return-void
.end method
