.class public final Landroid/location/provider/ReverseGeocodeRequest$Builder;
.super Ljava/lang/Object;
.source "ReverseGeocodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ReverseGeocodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallingAttributionTag:Ljava/lang/String;

.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mCallingUid:I

.field private final blacklist mLatitude:D

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mLongitude:D

.field private final blacklist mMaxResults:I


# direct methods
.method public constructor whitelist <init>(DDILjava/util/Locale;ILjava/lang/String;)V
    .registers 10
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "locale"    # Ljava/util/Locale;
    .param p7, "callingUid"    # I
    .param p8, "callingPackage"    # Ljava/lang/String;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-wide p1, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mLatitude:D

    .line 202
    iput-wide p3, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mLongitude:D

    .line 203
    iput p5, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mMaxResults:I

    .line 204
    iput-object p6, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mLocale:Ljava/util/Locale;

    .line 205
    iput p7, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mCallingUid:I

    .line 206
    iput-object p8, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mCallingPackage:Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mCallingAttributionTag:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/provider/ReverseGeocodeRequest;
    .registers 12

    .line 224
    new-instance v0, Landroid/location/provider/ReverseGeocodeRequest;

    iget-wide v1, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mLatitude:D

    iget-wide v3, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mLongitude:D

    iget v5, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mMaxResults:I

    iget-object v6, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mLocale:Ljava/util/Locale;

    iget v7, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mCallingUid:I

    iget-object v8, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mCallingPackage:Ljava/lang/String;

    iget-object v9, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mCallingAttributionTag:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/location/provider/ReverseGeocodeRequest;-><init>(DDILjava/util/Locale;ILjava/lang/String;Ljava/lang/String;Landroid/location/provider/ReverseGeocodeRequest-IA;)V

    return-object v0
.end method

.method public whitelist setCallingAttributionTag(Ljava/lang/String;)Landroid/location/provider/ReverseGeocodeRequest$Builder;
    .registers 2
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 217
    iput-object p1, p0, Landroid/location/provider/ReverseGeocodeRequest$Builder;->mCallingAttributionTag:Ljava/lang/String;

    .line 218
    return-object p0
.end method
