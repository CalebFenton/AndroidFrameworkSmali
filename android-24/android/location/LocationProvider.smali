.class public Landroid/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field public static final AVAILABLE:I = 0x2

.field public static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const-string/jumbo v0, "[^a-zA-Z0-9]"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "provider name contains illegal character: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 63
    :cond_0
    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    #@28
    .line 64
    iput-object p2, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2a
    .line 59
    return-void
.end method

.method public static propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p2, "criteria"    # Landroid/location/Criteria;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 87
    const-string/jumbo v0, "passive"

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 89
    return v2

    #@b
    .line 91
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 94
    return v2

    #@e
    .line 97
    :cond_1
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 98
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    #@17
    move-result v0

    #@18
    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    #@1a
    if-ge v0, v1, :cond_2

    #@1c
    .line 99
    return v2

    #@1d
    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 102
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    #@26
    move-result v0

    #@27
    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    #@29
    if-ge v0, v1, :cond_3

    #@2b
    .line 103
    return v2

    #@2c
    .line 105
    :cond_3
    invoke-virtual {p2}, Landroid/location/Criteria;->isAltitudeRequired()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_4

    #@32
    iget-boolean v0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    #@34
    if-eqz v0, :cond_7

    #@36
    .line 108
    :cond_4
    invoke-virtual {p2}, Landroid/location/Criteria;->isSpeedRequired()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_5

    #@3c
    iget-boolean v0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    #@3e
    if-eqz v0, :cond_8

    #@40
    .line 111
    :cond_5
    invoke-virtual {p2}, Landroid/location/Criteria;->isBearingRequired()Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_6

    #@46
    iget-boolean v0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    #@48
    if-eqz v0, :cond_9

    #@4a
    .line 114
    :cond_6
    invoke-virtual {p2}, Landroid/location/Criteria;->isCostAllowed()Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_a

    #@50
    iget-boolean v0, p1, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    #@52
    if-eqz v0, :cond_a

    #@54
    .line 115
    return v2

    #@55
    .line 106
    :cond_7
    return v2

    #@56
    .line 109
    :cond_8
    return v2

    #@57
    .line 112
    :cond_9
    return v2

    #@58
    .line 117
    :cond_a
    const/4 v0, 0x1

    #@59
    return v0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    #@4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    #@4
    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    #@4
    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .param p1, "criteria"    # Landroid/location/Criteria;

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@4
    invoke-static {v0, v1, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public requiresCell()Z
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    #@4
    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    #@4
    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    #@4
    return v0
.end method

.method public supportsAltitude()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    #@4
    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    #@4
    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    #@4
    return v0
.end method
