.class public final Landroid/location/provider/ForwardGeocodeRequest;
.super Ljava/lang/Object;
.source "ForwardGeocodeRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ForwardGeocodeRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/provider/ForwardGeocodeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingAttributionTag:Ljava/lang/String;

.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mCallingUid:I

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mLocationName:Ljava/lang/String;

.field private final blacklist mLowerLeftLatitude:D

.field private final blacklist mLowerLeftLongitude:D

.field private final blacklist mMaxResults:I

.field private final blacklist mUpperRightLatitude:D

.field private final blacklist mUpperRightLongitude:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Landroid/location/provider/ForwardGeocodeRequest$1;

    invoke-direct {v0}, Landroid/location/provider/ForwardGeocodeRequest$1;-><init>()V

    sput-object v0, Landroid/location/provider/ForwardGeocodeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;DDDDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "locale"    # Ljava/util/Locale;
    .param p12, "callingUid"    # I
    .param p13, "callingPackage"    # Ljava/lang/String;
    .param p14, "callingAttributionTag"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "locationName must not be null"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 68
    const-wide v7, 0x4056800000000000L    # 90.0

    const-string v9, "lowerLeftLatitude"

    const-wide v5, -0x3fa9800000000000L    # -90.0

    move-wide v3, p2

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 69
    const-wide v5, 0x4066800000000000L    # 180.0

    const-string v7, "lowerLeftLongitude"

    const-wide v3, -0x3f99800000000000L    # -180.0

    move-wide v1, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 70
    const-wide v5, 0x4056800000000000L    # 90.0

    const-string v7, "upperRightLatitude"

    const-wide v3, -0x3fa9800000000000L    # -90.0

    move-wide/from16 v1, p6

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 71
    const-wide v5, 0x4066800000000000L    # 180.0

    const-string v7, "upperRightLongitude"

    const-wide v3, -0x3f99800000000000L    # -180.0

    move-wide/from16 v1, p8

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 74
    iput-object p1, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocationName:Ljava/lang/String;

    .line 75
    move-wide v3, p2

    iput-wide v3, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLatitude:D

    .line 76
    move-wide v1, p4

    iput-wide v1, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLongitude:D

    .line 77
    move-wide/from16 v5, p6

    iput-wide v5, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLatitude:D

    .line 78
    move-wide/from16 v7, p8

    iput-wide v7, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLongitude:D

    .line 79
    move/from16 v9, p10

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mMaxResults:I

    .line 80
    invoke-static/range {p11 .. p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocale:Ljava/util/Locale;

    .line 82
    move/from16 v0, p12

    iput v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingUid:I

    .line 83
    invoke-static/range {p13 .. p13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    .line 84
    move-object/from16 v10, p14

    iput-object v10, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;DDDDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;Landroid/location/provider/ForwardGeocodeRequest-IA;)V
    .registers 16

    invoke-direct/range {p0 .. p14}, Landroid/location/provider/ForwardGeocodeRequest;-><init>(Ljava/lang/String;DDDDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 194
    instance-of v0, p1, Landroid/location/provider/ForwardGeocodeRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    move-object v0, p1

    check-cast v0, Landroid/location/provider/ForwardGeocodeRequest;

    .line 195
    .local v0, "that":Landroid/location/provider/ForwardGeocodeRequest;
    iget-wide v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLatitude:D

    iget-wide v4, v0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLatitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5e

    iget-wide v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLongitude:D

    iget-wide v4, v0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLongitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5e

    iget-wide v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLatitude:D

    iget-wide v4, v0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLatitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5e

    iget-wide v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLongitude:D

    iget-wide v4, v0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLongitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5e

    iget v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mMaxResults:I

    iget v3, v0, Landroid/location/provider/ForwardGeocodeRequest;->mMaxResults:I

    if-ne v2, v3, :cond_5e

    iget v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingUid:I

    iget v3, v0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingUid:I

    if-ne v2, v3, :cond_5e

    iget-object v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Landroid/location/provider/ForwardGeocodeRequest;->mLocale:Ljava/util/Locale;

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    iget-object v3, v0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocationName:Ljava/lang/String;

    iget-object v3, v0, Landroid/location/provider/ForwardGeocodeRequest;->mLocationName:Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    iget-object v3, v0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    .line 204
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v1, 0x1

    goto :goto_5f

    :cond_5e
    nop

    .line 195
    :goto_5f
    return v1

    .line 207
    .end local v0    # "that":Landroid/location/provider/ForwardGeocodeRequest;
    :cond_60
    return v1
.end method

.method public whitelist getCallingAttributionTag()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallingPackage()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallingUid()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingUid:I

    return v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getLocationName()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocationName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLowerLeftLatitude()D
    .registers 3

    .line 98
    iget-wide v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLatitude:D

    return-wide v0
.end method

.method public whitelist getLowerLeftLongitude()D
    .registers 3

    .line 104
    iget-wide v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLongitude:D

    return-wide v0
.end method

.method public whitelist getMaxResults()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mMaxResults:I

    return v0
.end method

.method public whitelist getUpperRightLatitude()D
    .registers 3

    .line 110
    iget-wide v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLatitude:D

    return-wide v0
.end method

.method public whitelist getUpperRightLongitude()D
    .registers 3

    .line 116
    iget-wide v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLongitude:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 212
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocationName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLatitude:D

    .line 214
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLongitude:D

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLatitude:D

    .line 216
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLongitude:D

    .line 217
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget v5, p0, Landroid/location/provider/ForwardGeocodeRequest;->mMaxResults:I

    .line 218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocale:Ljava/util/Locale;

    iget v7, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingUid:I

    .line 220
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    iget-object v9, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 179
    iget-wide v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 180
    iget-wide v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLowerLeftLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 181
    iget-wide v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 182
    iget-wide v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mUpperRightLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 183
    iget v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mMaxResults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 187
    iget v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 190
    return-void
.end method
