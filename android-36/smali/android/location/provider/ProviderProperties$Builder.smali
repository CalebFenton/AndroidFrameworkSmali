.class public final Landroid/location/provider/ProviderProperties$Builder;
.super Ljava/lang/Object;
.source "ProviderProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ProviderProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAccuracy:I

.field private blacklist mHasAltitudeSupport:Z

.field private blacklist mHasBearingSupport:Z

.field private blacklist mHasCellRequirement:Z

.field private blacklist mHasMonetaryCost:Z

.field private blacklist mHasNetworkRequirement:Z

.field private blacklist mHasSatelliteRequirement:Z

.field private blacklist mHasSpeedSupport:Z

.field private blacklist mPowerUsage:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasNetworkRequirement:Z

    .line 308
    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSatelliteRequirement:Z

    .line 309
    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasCellRequirement:Z

    .line 310
    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasMonetaryCost:Z

    .line 311
    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasAltitudeSupport:Z

    .line 312
    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSpeedSupport:Z

    .line 313
    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasBearingSupport:Z

    .line 314
    const/4 v0, 0x3

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mPowerUsage:I

    .line 315
    const/4 v0, 0x2

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mAccuracy:I

    .line 316
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/provider/ProviderProperties;)V
    .registers 3
    .param p1, "providerProperties"    # Landroid/location/provider/ProviderProperties;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasNetworkRequirement(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasNetworkRequirement:Z

    .line 320
    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasSatelliteRequirement(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSatelliteRequirement:Z

    .line 321
    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasCellRequirement(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasCellRequirement:Z

    .line 322
    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasMonetaryCost(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasMonetaryCost:Z

    .line 323
    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasAltitudeSupport(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasAltitudeSupport:Z

    .line 324
    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasSpeedSupport(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSpeedSupport:Z

    .line 325
    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmHasBearingSupport(Landroid/location/provider/ProviderProperties;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasBearingSupport:Z

    .line 326
    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmPowerUsage(Landroid/location/provider/ProviderProperties;)I

    move-result v0

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mPowerUsage:I

    .line 327
    invoke-static {p1}, Landroid/location/provider/ProviderProperties;->-$$Nest$fgetmAccuracy(Landroid/location/provider/ProviderProperties;)I

    move-result v0

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mAccuracy:I

    .line 328
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/provider/ProviderProperties;
    .registers 12

    .line 409
    new-instance v0, Landroid/location/provider/ProviderProperties;

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasNetworkRequirement:Z

    iget-boolean v2, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSatelliteRequirement:Z

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasCellRequirement:Z

    iget-boolean v4, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasMonetaryCost:Z

    iget-boolean v5, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasAltitudeSupport:Z

    iget-boolean v6, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSpeedSupport:Z

    iget-boolean v7, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasBearingSupport:Z

    iget v8, p0, Landroid/location/provider/ProviderProperties$Builder;->mPowerUsage:I

    iget v9, p0, Landroid/location/provider/ProviderProperties$Builder;->mAccuracy:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/location/provider/ProviderProperties;-><init>(ZZZZZZZIILandroid/location/provider/ProviderProperties-IA;)V

    return-object v0
.end method

.method public whitelist setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;
    .registers 5
    .param p1, "accuracy"    # I

    .line 400
    const/4 v0, 0x2

    const-string v1, "accuracy"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mAccuracy:I

    .line 402
    return-object p0
.end method

.method public whitelist setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2
    .param p1, "supportsAltitude"    # Z

    .line 366
    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasAltitudeSupport:Z

    .line 367
    return-object p0
.end method

.method public whitelist setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2
    .param p1, "supportsBearing"    # Z

    .line 382
    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasBearingSupport:Z

    .line 383
    return-object p0
.end method

.method public whitelist setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2
    .param p1, "requiresCell"    # Z

    .line 350
    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasCellRequirement:Z

    .line 351
    return-object p0
.end method

.method public whitelist setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2
    .param p1, "monetaryCost"    # Z

    .line 358
    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasMonetaryCost:Z

    .line 359
    return-object p0
.end method

.method public whitelist setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2
    .param p1, "requiresNetwork"    # Z

    .line 334
    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasNetworkRequirement:Z

    .line 335
    return-object p0
.end method

.method public whitelist setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2
    .param p1, "requiresSatellite"    # Z

    .line 342
    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSatelliteRequirement:Z

    .line 343
    return-object p0
.end method

.method public whitelist setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;
    .registers 2
    .param p1, "supportsSpeed"    # Z

    .line 374
    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties$Builder;->mHasSpeedSupport:Z

    .line 375
    return-object p0
.end method

.method public whitelist setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;
    .registers 5
    .param p1, "powerUsage"    # I

    .line 390
    const/4 v0, 0x3

    const-string v1, "powerUsage"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/provider/ProviderProperties$Builder;->mPowerUsage:I

    .line 392
    return-object p0
.end method
