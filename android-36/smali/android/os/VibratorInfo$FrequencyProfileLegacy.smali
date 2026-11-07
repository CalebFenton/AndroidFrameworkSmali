.class public final Landroid/os/VibratorInfo$FrequencyProfileLegacy;
.super Ljava/lang/Object;
.source "VibratorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrequencyProfileLegacy"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo$FrequencyProfileLegacy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrequencyRangeHz:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrequencyResolutionHz:F

.field private final blacklist mMaxAmplitudes:[F

.field private final blacklist mMinFrequencyHz:F

.field private final blacklist mResonantFrequencyHz:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)F
    .registers 1

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1145
    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFF[F)V
    .registers 12
    .param p1, "resonantFrequencyHz"    # F
    .param p2, "minFrequencyHz"    # F
    .param p3, "frequencyResolutionHz"    # F
    .param p4, "maxAmplitudes"    # [F

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iput p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    .line 1006
    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    .line 1007
    iput p3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    .line 1008
    const/4 v0, 0x0

    if-nez p4, :cond_e

    move v1, v0

    goto :goto_f

    :cond_e
    array-length v1, p4

    :goto_f
    new-array v1, v1, [F

    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    .line 1009
    if-eqz p4, :cond_1b

    .line 1010
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v2, p4

    invoke-static {p4, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    :cond_1b
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_42

    cmpl-float v1, p1, v2

    if-lez v1, :cond_42

    .line 1016
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_42

    cmpl-float v1, p2, v2

    if-lez v1, :cond_42

    .line 1018
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_42

    cmpl-float v1, p3, v2

    if-lez v1, :cond_42

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v1, v1

    if-lez v1, :cond_42

    move v1, v3

    goto :goto_43

    :cond_42
    move v1, v0

    .line 1023
    .local v1, "isValid":Z
    :goto_43
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_44
    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v5, v5

    if-ge v4, v5, :cond_62

    .line 1024
    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    aget v5, v5, v4

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_5d

    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    aget v5, v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5d

    move v5, v3

    goto :goto_5e

    :cond_5d
    move v5, v0

    :goto_5e
    and-int/2addr v1, v5

    .line 1023
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 1027
    .end local v4    # "i":I
    :cond_62
    if-eqz v1, :cond_6c

    .line 1028
    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v2, v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, p2

    goto :goto_6e

    .line 1029
    :cond_6c
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_6e
    nop

    .line 1032
    .local v2, "maxFrequencyHz":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_82

    cmpl-float v4, p1, p2

    if-ltz v4, :cond_82

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_82

    cmpg-float v4, p2, v2

    if-gez v4, :cond_82

    move v0, v3

    :cond_82
    and-int/2addr v0, v1

    .line 1037
    .end local v1    # "isValid":Z
    .local v0, "isValid":Z
    if-eqz v0, :cond_92

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    goto :goto_93

    :cond_92
    const/4 v1, 0x0

    :goto_93
    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    .line 1038
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    .line 989
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1112
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1113
    return v0

    .line 1115
    :cond_4
    instance-of v1, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1116
    return v2

    .line 1118
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 1119
    .local v1, "that":Landroid/os/VibratorInfo$FrequencyProfileLegacy;
    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_36

    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    .line 1120
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_36

    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    .line 1121
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    iget-object v4, v1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    .line 1122
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 1119
    :goto_37
    return v0
.end method

.method public blacklist getFrequencyRangeHz()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getFrequencyResolutionHz()F
    .registers 2

    .line 1094
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    return v0
.end method

.method public blacklist getMaxAmplitude(F)F
    .registers 10
    .param p1, "frequencyHz"    # F

    .line 1061
    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_51

    .line 1067
    :cond_19
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    sub-float v0, p1, v0

    .line 1072
    .local v0, "mappingFreq":F
    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    div-float v1, v0, v1

    float-to-double v1, v1

    .line 1073
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 1072
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1075
    .local v1, "startIdx":I
    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1080
    .local v2, "nextIdx":I
    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    aget v3, v3, v1

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    aget v4, v4, v2

    int-to-float v5, v1

    iget v6, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    mul-float/2addr v5, v6

    int-to-float v6, v2

    iget v7, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    mul-float/2addr v6, v7

    invoke-static {v3, v4, v5, v6, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v3

    return v3

    .line 1063
    .end local v0    # "mappingFreq":F
    .end local v1    # "startIdx":I
    .end local v2    # "nextIdx":I
    :cond_51
    :goto_51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxAmplitudes()[F
    .registers 3

    .line 1089
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1127
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    .line 1128
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1127
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 1129
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 1130
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    return v1
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 1042
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrequencyProfileLegacy{mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResonantFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequencyResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxAmplitudes count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1099
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1100
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1101
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1102
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1103
    return-void
.end method
