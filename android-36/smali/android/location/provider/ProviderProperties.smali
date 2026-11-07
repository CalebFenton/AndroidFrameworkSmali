.class public final Landroid/location/provider/ProviderProperties;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ProviderProperties$Builder;,
        Landroid/location/provider/ProviderProperties$Accuracy;,
        Landroid/location/provider/ProviderProperties$PowerUsage;
    }
.end annotation


# static fields
.field public static final whitelist ACCURACY_COARSE:I = 0x2

.field public static final whitelist ACCURACY_FINE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/provider/ProviderProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist POWER_USAGE_HIGH:I = 0x3

.field public static final whitelist POWER_USAGE_LOW:I = 0x1

.field public static final whitelist POWER_USAGE_MEDIUM:I = 0x2


# instance fields
.field private final blacklist mAccuracy:I

.field private final blacklist mHasAltitudeSupport:Z

.field private final blacklist mHasBearingSupport:Z

.field private final blacklist mHasCellRequirement:Z

.field private final blacklist mHasMonetaryCost:Z

.field private final blacklist mHasNetworkRequirement:Z

.field private final blacklist mHasSatelliteRequirement:Z

.field private final blacklist mHasSpeedSupport:Z

.field private final blacklist mPowerUsage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccuracy(Landroid/location/provider/ProviderProperties;)I
    .registers 1

    iget p0, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasAltitudeSupport(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasBearingSupport(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasCellRequirement(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasMonetaryCost(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasNetworkRequirement(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasSatelliteRequirement(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasSpeedSupport(Landroid/location/provider/ProviderProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerUsage(Landroid/location/provider/ProviderProperties;)I
    .registers 1

    iget p0, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 161
    new-instance v0, Landroid/location/provider/ProviderProperties$1;

    invoke-direct {v0}, Landroid/location/provider/ProviderProperties$1;-><init>()V

    sput-object v0, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZZZZZZZII)V
    .registers 10
    .param p1, "hasNetworkRequirement"    # Z
    .param p2, "hasSatelliteRequirement"    # Z
    .param p3, "hasCellRequirement"    # Z
    .param p4, "hasMonetaryCost"    # Z
    .param p5, "hasAltitudeSupport"    # Z
    .param p6, "hasSpeedSupport"    # Z
    .param p7, "hasBearingSupport"    # Z
    .param p8, "powerUsage"    # I
    .param p9, "accuracy"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean p1, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    .line 86
    iput-boolean p2, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    .line 87
    iput-boolean p3, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    .line 88
    iput-boolean p4, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    .line 89
    iput-boolean p5, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    .line 90
    iput-boolean p6, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    .line 91
    iput-boolean p7, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    .line 92
    iput p8, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    .line 93
    iput p9, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    .line 94
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZZZZZIILandroid/location/provider/ProviderProperties-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/location/provider/ProviderProperties;-><init>(ZZZZZZZII)V

    return-void
.end method

.method private static blacklist accuracyToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "accuracy"    # I

    .line 281
    packed-switch p0, :pswitch_data_10

    .line 287
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :pswitch_9
    const-string v0, "Coarse"

    return-object v0

    .line 285
    :pswitch_c
    const-string v0, "Fine"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist powerToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "power"    # I

    .line 268
    packed-switch p0, :pswitch_data_12

    .line 276
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 274
    :pswitch_9
    const-string v0, "High"

    return-object v0

    .line 272
    :pswitch_c
    const-string v0, "Medium"

    return-object v0

    .line 270
    :pswitch_f
    const-string v0, "Low"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 204
    return v0

    .line 206
    :cond_4
    instance-of v1, p1, Landroid/location/provider/ProviderProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 207
    return v2

    .line 209
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/provider/ProviderProperties;

    .line 210
    .local v1, "that":Landroid/location/provider/ProviderProperties;
    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    iget-boolean v4, v1, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    iget v4, v1, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    iget v4, v1, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    if-ne v3, v4, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    return v0
.end method

.method public whitelist getAccuracy()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    return v0
.end method

.method public whitelist getPowerUsage()I
    .registers 2

    .line 150
    iget v0, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    return v0
.end method

.method public whitelist hasAltitudeSupport()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    return v0
.end method

.method public whitelist hasBearingSupport()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    return v0
.end method

.method public whitelist hasCellRequirement()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    return v0
.end method

.method public whitelist hasMonetaryCost()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    return v0
.end method

.method public whitelist hasNetworkRequirement()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    return v0
.end method

.method public whitelist hasSatelliteRequirement()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    return v0
.end method

.method public whitelist hasSpeedSupport()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 223
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    .line 224
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v0, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 223
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProviderProperties["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "powerUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    invoke-static {v2}, Landroid/location/provider/ProviderProperties;->powerToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, "accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    invoke-static {v2}, Landroid/location/provider/ProviderProperties;->accuracyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    if-eqz v1, :cond_60

    .line 234
    :cond_37
    const-string v1, ", requires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    if-eqz v1, :cond_45

    .line 236
    const-string v1, "network,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_45
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    if-eqz v1, :cond_4e

    .line 239
    const-string v1, "satellite,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_4e
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    if-eqz v1, :cond_57

    .line 242
    const-string v1, "cell,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 246
    :cond_60
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    if-eqz v1, :cond_69

    .line 247
    const-string v1, ", hasMonetaryCost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_69
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    const-string v2, "]"

    if-nez v1, :cond_77

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    if-nez v1, :cond_77

    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    if-eqz v1, :cond_a3

    .line 250
    :cond_77
    const-string v1, ", supports=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    if-eqz v1, :cond_85

    .line 252
    const-string v1, "bearing,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_85
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    if-eqz v1, :cond_8e

    .line 255
    const-string v1, "speed,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_8e
    iget-boolean v1, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    if-eqz v1, :cond_97

    .line 258
    const-string v1, "altitude,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_a3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasNetworkRequirement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSatelliteRequirement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasCellRequirement:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasMonetaryCost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 194
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasAltitudeSupport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 195
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasSpeedSupport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 196
    iget-boolean v0, p0, Landroid/location/provider/ProviderProperties;->mHasBearingSupport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 197
    iget v0, p0, Landroid/location/provider/ProviderProperties;->mPowerUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Landroid/location/provider/ProviderProperties;->mAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return-void
.end method
