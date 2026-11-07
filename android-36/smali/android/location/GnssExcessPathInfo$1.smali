.class Landroid/location/GnssExcessPathInfo$1;
.super Ljava/lang/Object;
.source "GnssExcessPathInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssExcessPathInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssExcessPathInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssExcessPathInfo;
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .local v1, "flags":I
    and-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v2

    .line 201
    .local v0, "excessPathLengthMeters":F
    :goto_f
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_18

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    goto :goto_19

    :cond_18
    move v3, v2

    .line 204
    .local v3, "excessPathLengthUncertaintyMeters":F
    :goto_19
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_26

    .line 205
    sget-object v4, Landroid/location/GnssReflectingPlane;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GnssReflectingPlane;

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    .line 207
    .local v4, "reflectingPlane":Landroid/location/GnssReflectingPlane;
    :goto_27
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_30

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    goto :goto_31

    :cond_30
    nop

    :goto_31
    move v5, v2

    .line 209
    .local v5, "attenuationDb":F
    move v2, v0

    .end local v0    # "excessPathLengthMeters":F
    .local v2, "excessPathLengthMeters":F
    new-instance v0, Landroid/location/GnssExcessPathInfo;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssExcessPathInfo;-><init>(IFFLandroid/location/GnssReflectingPlane;FLandroid/location/GnssExcessPathInfo-IA;)V

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

    .line 192
    invoke-virtual {p0, p1}, Landroid/location/GnssExcessPathInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssExcessPathInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssExcessPathInfo;
    .registers 3
    .param p1, "i"    # I

    .line 215
    new-array v0, p1, [Landroid/location/GnssExcessPathInfo;

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

    .line 192
    invoke-virtual {p0, p1}, Landroid/location/GnssExcessPathInfo$1;->newArray(I)[Landroid/location/GnssExcessPathInfo;

    move-result-object p1

    return-object p1
.end method
