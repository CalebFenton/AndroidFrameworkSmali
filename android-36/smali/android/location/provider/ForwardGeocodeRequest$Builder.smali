.class public final Landroid/location/provider/ForwardGeocodeRequest$Builder;
.super Ljava/lang/Object;
.source "ForwardGeocodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ForwardGeocodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallingAttributionTag:Ljava/lang/String;

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
.method public constructor whitelist <init>(Ljava/lang/String;DDDDILjava/util/Locale;ILjava/lang/String;)V
    .registers 15
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "locale"    # Ljava/util/Locale;
    .param p12, "callingUid"    # I
    .param p13, "callingPackage"    # Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mLocationName:Ljava/lang/String;

    .line 252
    iput-wide p2, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mLowerLeftLatitude:D

    .line 253
    iput-wide p4, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mLowerLeftLongitude:D

    .line 254
    iput-wide p6, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mUpperRightLatitude:D

    .line 255
    iput-wide p8, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mUpperRightLongitude:D

    .line 256
    iput p10, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mMaxResults:I

    .line 257
    iput-object p11, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mLocale:Ljava/util/Locale;

    .line 258
    iput p12, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mCallingUid:I

    .line 259
    iput-object p13, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mCallingPackage:Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mCallingAttributionTag:Ljava/lang/String;

    .line 261
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/provider/ForwardGeocodeRequest;
    .registers 18

    .line 277
    move-object/from16 v0, p0

    new-instance v1, Landroid/location/provider/ForwardGeocodeRequest;

    iget-object v2, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mLocationName:Ljava/lang/String;

    iget-wide v3, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mLowerLeftLatitude:D

    iget-wide v5, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mLowerLeftLongitude:D

    iget-wide v7, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mUpperRightLatitude:D

    iget-wide v9, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mUpperRightLongitude:D

    iget v11, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mMaxResults:I

    iget-object v12, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mLocale:Ljava/util/Locale;

    iget v13, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mCallingUid:I

    iget-object v14, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mCallingPackage:Ljava/lang/String;

    iget-object v15, v0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mCallingAttributionTag:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Landroid/location/provider/ForwardGeocodeRequest;-><init>(Ljava/lang/String;DDDDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;Landroid/location/provider/ForwardGeocodeRequest-IA;)V

    return-object v1
.end method

.method public whitelist setCallingAttributionTag(Ljava/lang/String;)Landroid/location/provider/ForwardGeocodeRequest$Builder;
    .registers 2
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 270
    iput-object p1, p0, Landroid/location/provider/ForwardGeocodeRequest$Builder;->mCallingAttributionTag:Ljava/lang/String;

    .line 271
    return-object p0
.end method
