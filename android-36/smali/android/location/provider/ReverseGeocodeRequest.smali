.class public final Landroid/location/provider/ReverseGeocodeRequest;
.super Ljava/lang/Object;
.source "ReverseGeocodeRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ReverseGeocodeRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/provider/ReverseGeocodeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingAttributionTag:Ljava/lang/String;

.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mCallingUid:I

.field private final blacklist mLatitude:D

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mLongitude:D

.field private final blacklist mMaxResults:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Landroid/location/provider/ReverseGeocodeRequest$1;

    invoke-direct {v0}, Landroid/location/provider/ReverseGeocodeRequest$1;-><init>()V

    sput-object v0, Landroid/location/provider/ReverseGeocodeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(DDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "locale"    # Ljava/util/Locale;
    .param p7, "callingUid"    # I
    .param p8, "callingPackage"    # Ljava/lang/String;
    .param p9, "callingAttributionTag"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide v4, 0x4056800000000000L    # 90.0

    const-string v6, "latitude"

    const-wide v2, -0x3fa9800000000000L    # -90.0

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 63
    const-wide v4, 0x4066800000000000L    # 180.0

    const-string v6, "longitude"

    const-wide v2, -0x3f99800000000000L    # -180.0

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 65
    iput-wide p1, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLatitude:D

    .line 66
    iput-wide p3, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLongitude:D

    .line 67
    const/4 v4, 0x1

    invoke-static {p5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/location/provider/ReverseGeocodeRequest;->mMaxResults:I

    .line 68
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    iput-object v4, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLocale:Ljava/util/Locale;

    .line 70
    iput p7, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingUid:I

    .line 71
    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    .line 72
    move-object/from16 v6, p9

    iput-object v6, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(DDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;Landroid/location/provider/ReverseGeocodeRequest-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/location/provider/ReverseGeocodeRequest;-><init>(DDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 156
    instance-of v0, p1, Landroid/location/provider/ReverseGeocodeRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    move-object v0, p1

    check-cast v0, Landroid/location/provider/ReverseGeocodeRequest;

    .line 157
    .local v0, "that":Landroid/location/provider/ReverseGeocodeRequest;
    iget-wide v2, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLatitude:D

    iget-wide v4, v0, Landroid/location/provider/ReverseGeocodeRequest;->mLatitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_44

    iget-wide v2, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLongitude:D

    iget-wide v4, v0, Landroid/location/provider/ReverseGeocodeRequest;->mLongitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_44

    iget v2, p0, Landroid/location/provider/ReverseGeocodeRequest;->mMaxResults:I

    iget v3, v0, Landroid/location/provider/ReverseGeocodeRequest;->mMaxResults:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingUid:I

    iget v3, v0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingUid:I

    if-ne v2, v3, :cond_44

    iget-object v2, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Landroid/location/provider/ReverseGeocodeRequest;->mLocale:Ljava/util/Locale;

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    iget-object v3, v0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    iget-object v3, v0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    .line 163
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    nop

    .line 157
    :goto_45
    return v1

    .line 166
    .end local v0    # "that":Landroid/location/provider/ReverseGeocodeRequest;
    :cond_46
    return v1
.end method

.method public whitelist getCallingAttributionTag()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallingPackage()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallingUid()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingUid:I

    return v0
.end method

.method public whitelist getLatitude()D
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLatitude:D

    return-wide v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getLongitude()D
    .registers 3

    .line 84
    iget-wide v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLongitude:D

    return-wide v0
.end method

.method public whitelist getMaxResults()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mMaxResults:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 171
    iget-wide v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLatitude:D

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLongitude:D

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mMaxResults:I

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLocale:Ljava/util/Locale;

    iget v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingUid:I

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    iget-object v8, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 171
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget-wide v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 144
    iget-wide v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 145
    iget v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mMaxResults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/location/provider/ReverseGeocodeRequest;->mCallingAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 152
    return-void
.end method
