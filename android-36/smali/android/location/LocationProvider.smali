.class public Landroid/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist AVAILABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist OUT_OF_SERVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TEMPORARILY_UNAVAILABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mName:Ljava/lang/String;

.field private final blacklist mProperties:Landroid/location/provider/ProviderProperties;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Landroid/location/provider/ProviderProperties;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    .line 57
    return-void
.end method

.method public static blacklist propertiesMeetCriteria(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Landroid/location/Criteria;)Z
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "properties"    # Landroid/location/provider/ProviderProperties;
    .param p2, "criteria"    # Landroid/location/Criteria;

    .line 79
    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 81
    return v1

    .line 83
    :cond_a
    if-nez p1, :cond_d

    .line 86
    return v1

    .line 89
    :cond_d
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 90
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->getAccuracy()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 91
    return v1

    .line 93
    :cond_1e
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 94
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->getPowerUsage()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 95
    return v1

    .line 97
    :cond_2f
    invoke-virtual {p2}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->hasAltitudeSupport()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 98
    return v1

    .line 100
    :cond_3c
    invoke-virtual {p2}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->hasSpeedSupport()Z

    move-result v0

    if-nez v0, :cond_49

    .line 101
    return v1

    .line 103
    :cond_49
    invoke-virtual {p2}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->hasBearingSupport()Z

    move-result v0

    if-nez v0, :cond_56

    .line 104
    return v1

    .line 106
    :cond_56
    invoke-virtual {p2}, Landroid/location/Criteria;->isCostAllowed()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p1}, Landroid/location/provider/ProviderProperties;->hasMonetaryCost()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 107
    return v1

    .line 109
    :cond_63
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist getAccuracy()I
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    .line 223
    const/4 v0, 0x2

    return v0

    .line 225
    :cond_6
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->getAccuracy()I

    move-result v0

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPowerRequirement()I
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    .line 211
    const/4 v0, 0x3

    return v0

    .line 213
    :cond_6
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->getPowerUsage()I

    move-result v0

    return v0
.end method

.method public whitelist hasMonetaryCost()Z
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    .line 157
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_6
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasMonetaryCost()Z

    move-result v0

    return v0
.end method

.method public whitelist meetsCriteria(Landroid/location/Criteria;)Z
    .registers 4
    .param p1, "criteria"    # Landroid/location/Criteria;

    .line 71
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-static {v0, v1, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v0

    return v0
.end method

.method public whitelist requiresCell()Z
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    .line 144
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_6
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasCellRequirement()Z

    move-result v0

    return v0
.end method

.method public whitelist requiresNetwork()Z
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_6
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasNetworkRequirement()Z

    move-result v0

    return v0
.end method

.method public whitelist requiresSatellite()Z
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_6
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasSatelliteRequirement()Z

    move-result v0

    return v0
.end method

.method public whitelist supportsAltitude()Z
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_6
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasAltitudeSupport()Z

    move-result v0

    return v0
.end method

.method public whitelist supportsBearing()Z
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    .line 199
    const/4 v0, 0x0

    return v0

    .line 201
    :cond_6
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasBearingSupport()Z

    move-result v0

    return v0
.end method

.method public whitelist supportsSpeed()Z
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    if-nez v0, :cond_6

    .line 185
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_6
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties;->hasSpeedSupport()Z

    move-result v0

    return v0
.end method
