.class public final Landroid/location/GnssExcessPathInfo;
.super Ljava/lang/Object;
.source "GnssExcessPathInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssExcessPathInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HAS_ATTENUATION_MASK:I = 0x8

.field private static final blacklist HAS_EXCESS_PATH_LENGTH_MASK:I = 0x1

.field private static final blacklist HAS_EXCESS_PATH_LENGTH_UNC_MASK:I = 0x2

.field private static final blacklist HAS_REFLECTING_PLANE_MASK:I = 0x4


# instance fields
.field private final blacklist mAttenuationDb:F

.field private final blacklist mExcessPathLengthMeters:F

.field private final blacklist mExcessPathLengthUncertaintyMeters:F

.field private final blacklist mFlags:I

.field private final blacklist mReflectingPlane:Landroid/location/GnssReflectingPlane;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 191
    new-instance v0, Landroid/location/GnssExcessPathInfo$1;

    invoke-direct {v0}, Landroid/location/GnssExcessPathInfo$1;-><init>()V

    sput-object v0, Landroid/location/GnssExcessPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IFFLandroid/location/GnssReflectingPlane;F)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "excessPathLengthMeters"    # F
    .param p3, "excessPathLengthUncertaintyMeters"    # F
    .param p4, "reflectingPlane"    # Landroid/location/GnssReflectingPlane;
    .param p5, "attenuationDb"    # F

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    .line 64
    iput p2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    .line 65
    iput p3, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    .line 66
    iput-object p4, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    .line 67
    iput p5, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(IFFLandroid/location/GnssReflectingPlane;FLandroid/location/GnssExcessPathInfo-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/location/GnssExcessPathInfo;-><init>(IFFLandroid/location/GnssReflectingPlane;F)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 221
    instance-of v0, p1, Landroid/location/GnssExcessPathInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 222
    move-object v0, p1

    check-cast v0, Landroid/location/GnssExcessPathInfo;

    .line 223
    .local v0, "that":Landroid/location/GnssExcessPathInfo;
    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    iget v3, v0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    if-ne v2, v3, :cond_50

    .line 224
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLength()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    iget v3, v0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_50

    .line 226
    :cond_1e
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLengthUncertainty()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    iget v3, v0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_50

    .line 229
    :cond_2e
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasReflectingPlane()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    iget-object v3, v0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 231
    :cond_3e
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasAttenuation()Z

    move-result v2

    if-eqz v2, :cond_4e

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    iget v3, v0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_50

    :cond_4e
    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    nop

    .line 223
    :goto_51
    return v1

    .line 234
    .end local v0    # "that":Landroid/location/GnssExcessPathInfo;
    :cond_52
    return v1
.end method

.method public whitelist getAttenuationDb()F
    .registers 3

    .line 162
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasAttenuation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 166
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    return v0

    .line 163
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAttenuationDb() is not supported when hasAttenuation() is false"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExcessPathLengthMeters()F
    .registers 3

    .line 95
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLength()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 100
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    return v0

    .line 96
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getExcessPathLengthMeters() is not supported when hasExcessPathLength() is false"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExcessPathLengthUncertaintyMeters()F
    .registers 3

    .line 116
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLengthUncertainty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    return v0

    .line 117
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getExcessPathLengthUncertaintyMeters() is not supported when hasExcessPathLengthUncertainty() is false"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    return v0
.end method

.method public whitelist getReflectingPlane()Landroid/location/GnssReflectingPlane;
    .registers 3

    .line 142
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasReflectingPlane()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    return-object v0

    .line 143
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getReflectingPlane() is not supported when hasReflectingPlane() is false"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasAttenuation()Z
    .registers 2

    .line 151
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasExcessPathLength()Z
    .registers 3

    .line 83
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist hasExcessPathLengthUncertainty()Z
    .registers 2

    .line 105
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

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

    .line 131
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 239
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    .line 240
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    .line 241
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    iget v4, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    .line 243
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 239
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssExcessPathInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLength()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 251
    const-string v1, " ExcessPathLengthMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 253
    :cond_18
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLengthUncertainty()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 254
    const-string v1, " ExcessPathLengthUncertaintyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 257
    :cond_29
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasReflectingPlane()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 258
    const-string v1, " ReflectingPlane="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    :cond_3a
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasAttenuation()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 261
    const-string v1, " AttenuationDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 263
    :cond_4b
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelFlags"    # I

    .line 176
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLength()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 178
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 180
    :cond_10
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLengthUncertainty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 181
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 183
    :cond_1b
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasReflectingPlane()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 184
    iget-object v0, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    invoke-virtual {v0, p1, p2}, Landroid/location/GnssReflectingPlane;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    :cond_26
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasAttenuation()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 187
    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 189
    :cond_31
    return-void
.end method
