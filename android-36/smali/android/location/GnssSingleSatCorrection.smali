.class public final Landroid/location/GnssSingleSatCorrection;
.super Ljava/lang/Object;
.source "GnssSingleSatCorrection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssSingleSatCorrection$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HAS_COMBINED_ATTENUATION_MASK:I = 0x10

.field private static final blacklist HAS_COMBINED_EXCESS_PATH_LENGTH_MASK:I = 0x2

.field private static final blacklist HAS_COMBINED_EXCESS_PATH_LENGTH_UNC_MASK:I = 0x4

.field private static final blacklist HAS_PROB_SAT_IS_LOS_MASK:I = 0x1


# instance fields
.field private final blacklist mCarrierFrequencyHz:F

.field private final blacklist mCombinedAttenuationDb:F

.field private final blacklist mCombinedExcessPathLengthMeters:F

.field private final blacklist mCombinedExcessPathLengthUncertaintyMeters:F

.field private final blacklist mConstellationType:I

.field private final blacklist mGnssExcessPathInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProbSatIsLos:F

.field private final blacklist mSatId:I

.field private final blacklist mSingleSatCorrectionFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 242
    new-instance v0, Landroid/location/GnssSingleSatCorrection$1;

    invoke-direct {v0}, Landroid/location/GnssSingleSatCorrection$1;-><init>()V

    sput-object v0, Landroid/location/GnssSingleSatCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIFFFFFLjava/util/List;)V
    .registers 10
    .param p1, "singleSatCorrectionFlags"    # I
    .param p2, "constellationType"    # I
    .param p3, "satId"    # I
    .param p4, "carrierFrequencyHz"    # F
    .param p5, "probSatIsLos"    # F
    .param p6, "excessPathLengthMeters"    # F
    .param p7, "excessPathLengthUncertaintyMeters"    # F
    .param p8, "combinedAttenuationDb"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIFFFFF",
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p9, "gnssExcessPathInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssExcessPathInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    .line 75
    iput p2, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    .line 76
    iput p3, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    .line 77
    iput p4, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    .line 78
    iput p5, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    .line 79
    iput p6, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    .line 80
    iput p7, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    .line 81
    iput p8, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    .line 82
    iput-object p9, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIFFFFFLjava/util/List;Landroid/location/GnssSingleSatCorrection-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/location/GnssSingleSatCorrection;-><init>(IIIFFFFFLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 278
    instance-of v0, p1, Landroid/location/GnssSingleSatCorrection;

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    .line 279
    move-object v0, p1

    check-cast v0, Landroid/location/GnssSingleSatCorrection;

    .line 280
    .local v0, "that":Landroid/location/GnssSingleSatCorrection;
    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    .line 283
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    .line 284
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasValidSatelliteLineOfSight()Z

    move-result v2

    if-eqz v2, :cond_34

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    .line 286
    :cond_34
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLength()Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    .line 288
    :cond_44
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLengthUncertainty()Z

    move-result v2

    if-eqz v2, :cond_54

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    .line 291
    :cond_54
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasCombinedAttenuation()Z

    move-result v2

    if-eqz v2, :cond_64

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    :cond_64
    iget-object v2, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    iget-object v3, v0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    .line 293
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v1, 0x1

    goto :goto_71

    :cond_70
    nop

    .line 280
    :goto_71
    return v1

    .line 295
    .end local v0    # "that":Landroid/location/GnssSingleSatCorrection;
    :cond_72
    return v1
.end method

.method public whitelist getCarrierFrequencyHz()F
    .registers 2

    .line 131
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    return v0
.end method

.method public whitelist getCombinedAttenuationDb()F
    .registers 2

    .line 164
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    return v0
.end method

.method public whitelist getConstellationType()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    return v0
.end method

.method public whitelist getExcessPathLengthMeters()F
    .registers 2

    .line 149
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    return v0
.end method

.method public whitelist getExcessPathLengthUncertaintyMeters()F
    .registers 2

    .line 155
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    return v0
.end method

.method public whitelist getGnssExcessPathInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getProbabilityLineOfSight()F
    .registers 2

    .line 140
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    return v0
.end method

.method public whitelist getReflectingPlane()Landroid/location/GnssReflectingPlane;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSatelliteId()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    return v0
.end method

.method public blacklist getSingleSatelliteCorrectionFlags()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    return v0
.end method

.method public whitelist hasCombinedAttenuation()Z
    .registers 2

    .line 213
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasExcessPathLength()Z
    .registers 2

    .line 193
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasExcessPathLengthUncertainty()Z
    .registers 2

    .line 198
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasReflectingPlane()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasValidSatelliteLineOfSight()Z
    .registers 3

    .line 188
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 300
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    .line 303
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    .line 304
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    .line 305
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    .line 306
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    .line 307
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-object v9, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 300
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssSingleSatCorrection:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " ConstellationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, " SatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, " CarrierFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasValidSatelliteLineOfSight()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 319
    const-string v1, " ProbSatIsLos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 321
    :cond_39
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLength()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 322
    const-string v1, " CombinedExcessPathLengthMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 325
    :cond_4a
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLengthUncertainty()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 326
    const-string v1, " CombinedExcessPathLengthUncertaintyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 329
    :cond_5b
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasCombinedAttenuation()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 330
    const-string v1, " CombinedAttenuationDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 333
    :cond_6c
    iget-object v1, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_83

    .line 334
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_83
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 223
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 227
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasValidSatelliteLineOfSight()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 228
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 230
    :cond_1f
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLength()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 231
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 233
    :cond_2a
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLengthUncertainty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 234
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 236
    :cond_35
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasCombinedAttenuation()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 237
    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 239
    :cond_40
    iget-object v0, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 240
    return-void
.end method
