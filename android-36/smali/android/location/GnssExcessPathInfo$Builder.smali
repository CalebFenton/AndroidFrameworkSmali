.class public final Landroid/location/GnssExcessPathInfo$Builder;
.super Ljava/lang/Object;
.source "GnssExcessPathInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssExcessPathInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttenuationDb:F

.field private blacklist mExcessPathLengthMeters:F

.field private blacklist mExcessPathLengthUncertaintyMeters:F

.field private blacklist mFlags:I

.field private blacklist mReflectingPlane:Landroid/location/GnssReflectingPlane;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssExcessPathInfo;
    .registers 8

    .line 367
    new-instance v0, Landroid/location/GnssExcessPathInfo;

    iget v1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    iget v2, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthMeters:F

    iget v3, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthUncertaintyMeters:F

    iget-object v4, p0, Landroid/location/GnssExcessPathInfo$Builder;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    iget v5, p0, Landroid/location/GnssExcessPathInfo$Builder;->mAttenuationDb:F

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssExcessPathInfo;-><init>(IFFLandroid/location/GnssReflectingPlane;FLandroid/location/GnssExcessPathInfo-IA;)V

    return-object v0
.end method

.method public whitelist clearAttenuationDb()Landroid/location/GnssExcessPathInfo$Builder;
    .registers 2

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mAttenuationDb:F

    .line 360
    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    .line 361
    return-object p0
.end method

.method public whitelist clearExcessPathLengthMeters()Landroid/location/GnssExcessPathInfo$Builder;
    .registers 2

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthMeters:F

    .line 301
    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    .line 302
    return-object p0
.end method

.method public whitelist clearExcessPathLengthUncertaintyMeters()Landroid/location/GnssExcessPathInfo$Builder;
    .registers 2

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthUncertaintyMeters:F

    .line 324
    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    .line 325
    return-object p0
.end method

.method public whitelist setAttenuationDb(F)Landroid/location/GnssExcessPathInfo$Builder;
    .registers 5
    .param p1, "attenuationDb"    # F

    .line 345
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "attenuationDb"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 347
    iput p1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mAttenuationDb:F

    .line 348
    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    .line 349
    return-object p0
.end method

.method public whitelist setExcessPathLengthMeters(F)Landroid/location/GnssExcessPathInfo$Builder;
    .registers 5
    .param p1, "excessPathLengthMeters"    # F

    .line 286
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "excessPathLengthMeters"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 288
    iput p1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthMeters:F

    .line 289
    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    .line 290
    return-object p0
.end method

.method public whitelist setExcessPathLengthUncertaintyMeters(F)Landroid/location/GnssExcessPathInfo$Builder;
    .registers 5
    .param p1, "excessPathLengthUncertaintyMeters"    # F

    .line 309
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "excessPathLengthUncertaintyMeters"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 311
    iput p1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mExcessPathLengthUncertaintyMeters:F

    .line 312
    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    .line 313
    return-object p0
.end method

.method public whitelist setReflectingPlane(Landroid/location/GnssReflectingPlane;)Landroid/location/GnssExcessPathInfo$Builder;
    .registers 3
    .param p1, "reflectingPlane"    # Landroid/location/GnssReflectingPlane;

    .line 331
    iput-object p1, p0, Landroid/location/GnssExcessPathInfo$Builder;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    .line 332
    if-eqz p1, :cond_b

    .line 333
    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    goto :goto_11

    .line 335
    :cond_b
    iget v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/location/GnssExcessPathInfo$Builder;->mFlags:I

    .line 337
    :goto_11
    return-object p0
.end method
