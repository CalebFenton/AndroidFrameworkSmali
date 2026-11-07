.class Landroid/location/GnssSingleSatCorrection$1;
.super Ljava/lang/Object;
.source "GnssSingleSatCorrection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssSingleSatCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssSingleSatCorrection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssSingleSatCorrection;
    .registers 13
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .local v1, "singleSatCorrectionFlags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .local v2, "constellationType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .local v3, "satId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 251
    .local v4, "carrierFrequencyHz":F
    and-int/lit8 v0, v1, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1a

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    goto :goto_1b

    :cond_1a
    move v0, v5

    .line 254
    .local v0, "probSatIsLos":F
    :goto_1b
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_24

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    goto :goto_25

    :cond_24
    move v6, v5

    .line 258
    .local v6, "combinedExcessPathLengthMeters":F
    :goto_25
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_2e

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    goto :goto_2f

    :cond_2e
    move v7, v5

    .line 260
    .local v7, "combinedExcessPathLengthUncertaintyMeters":F
    :goto_2f
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_38

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    goto :goto_39

    :cond_38
    nop

    :goto_39
    move v8, v5

    .line 262
    .local v8, "combinedAttenuationDb":F
    sget-object v5, Landroid/location/GnssExcessPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .line 264
    .local v9, "gnssExcessPathInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssExcessPathInfo;>;"
    move v5, v0

    .end local v0    # "probSatIsLos":F
    .local v5, "probSatIsLos":F
    new-instance v0, Landroid/location/GnssSingleSatCorrection;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/location/GnssSingleSatCorrection;-><init>(IIIFFFFFLjava/util/List;Landroid/location/GnssSingleSatCorrection-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Landroid/location/GnssSingleSatCorrection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssSingleSatCorrection;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssSingleSatCorrection;
    .registers 3
    .param p1, "i"    # I

    .line 272
    new-array v0, p1, [Landroid/location/GnssSingleSatCorrection;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Landroid/location/GnssSingleSatCorrection$1;->newArray(I)[Landroid/location/GnssSingleSatCorrection;

    move-result-object p1

    return-object p1
.end method
