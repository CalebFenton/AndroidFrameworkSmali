.class public final Landroid/location/GlonassSatelliteEphemeris;
.super Ljava/lang/Object;
.source "GlonassSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GlonassSatelliteEphemeris$Builder;,
        Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;,
        Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;,
        Landroid/location/GlonassSatelliteEphemeris$GlonassHealthStatus;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GlonassSatelliteEphemeris;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEALTH_STATUS_HEALTHY:I = 0x0

.field public static final blacklist HEALTH_STATUS_UNHEALTHY:I = 0x1


# instance fields
.field private final blacklist mAgeInDays:I

.field private final blacklist mFrameTimeSeconds:D

.field private final blacklist mGlonassM:Z

.field private final blacklist mHealthState:I

.field private final blacklist mSatelliteClockModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

.field private final blacklist mSatelliteOrbitModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

.field private final blacklist mSlotNumber:I

.field private final blacklist mUpdateIntervalMinutes:I

.field private final blacklist mUpdateIntervalOdd:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 187
    new-instance v0, Landroid/location/GlonassSatelliteEphemeris$1;

    invoke-direct {v0}, Landroid/location/GlonassSatelliteEphemeris$1;-><init>()V

    sput-object v0, Landroid/location/GlonassSatelliteEphemeris;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GlonassSatelliteEphemeris$Builder;)V
    .registers 9
    .param p1, "builder"    # Landroid/location/GlonassSatelliteEphemeris$Builder;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmSlotNumber(Landroid/location/GlonassSatelliteEphemeris$Builder;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 96
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmHealthState(Landroid/location/GlonassSatelliteEphemeris$Builder;)I

    move-result v0

    if-ltz v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 97
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmFrameTimeSeconds(Landroid/location/GlonassSatelliteEphemeris$Builder;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_28

    goto :goto_29

    :cond_28
    move v2, v1

    :goto_29
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 98
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmAgeInDays(Landroid/location/GlonassSatelliteEphemeris$Builder;)I

    move-result v0

    const/16 v2, 0x1f

    const-string v3, "AgeInDays"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 99
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmUpdateIntervalMinutes(Landroid/location/GlonassSatelliteEphemeris$Builder;)I

    move-result v0

    const/16 v2, 0x3c

    const-string v3, "UpdateIntervalMinutes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 101
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModel(Landroid/location/GlonassSatelliteEphemeris$Builder;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    move-result-object v0

    const-string v1, "SatelliteClockModel cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/GlonassSatelliteEphemeris$Builder;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    move-result-object v0

    const-string v1, "SatelliteOrbitModel cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmSlotNumber(Landroid/location/GlonassSatelliteEphemeris$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mSlotNumber:I

    .line 106
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmHealthState(Landroid/location/GlonassSatelliteEphemeris$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mHealthState:I

    .line 107
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmFrameTimeSeconds(Landroid/location/GlonassSatelliteEphemeris$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mFrameTimeSeconds:D

    .line 108
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmAgeInDays(Landroid/location/GlonassSatelliteEphemeris$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mAgeInDays:I

    .line 109
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmUpdateIntervalMinutes(Landroid/location/GlonassSatelliteEphemeris$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mUpdateIntervalMinutes:I

    .line 110
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmUpdateIntervalOdd(Landroid/location/GlonassSatelliteEphemeris$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mUpdateIntervalOdd:Z

    .line 111
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmGlonassM(Landroid/location/GlonassSatelliteEphemeris$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mGlonassM:Z

    .line 112
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModel(Landroid/location/GlonassSatelliteEphemeris$Builder;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    .line 113
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/GlonassSatelliteEphemeris$Builder;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GlonassSatelliteEphemeris$Builder;Landroid/location/GlonassSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GlonassSatelliteEphemeris;-><init>(Landroid/location/GlonassSatelliteEphemeris$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAgeInDays()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mAgeInDays:I

    return v0
.end method

.method public blacklist getFrameTimeSeconds()D
    .registers 3

    .line 132
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mFrameTimeSeconds:D

    return-wide v0
.end method

.method public blacklist getHealthState()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mHealthState:I

    return v0
.end method

.method public blacklist getSatelliteClockModel()Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    return-object v0
.end method

.method public blacklist getSatelliteOrbitModel()Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    return-object v0
.end method

.method public blacklist getSlotNumber()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mSlotNumber:I

    return v0
.end method

.method public blacklist getUpdateIntervalMinutes()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mUpdateIntervalMinutes:I

    return v0
.end method

.method public blacklist isGlonassM()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mGlonassM:Z

    return v0
.end method

.method public blacklist isUpdateIntervalOdd()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mUpdateIntervalOdd:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlonassSatelliteEphemeris["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "slotNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GlonassSatelliteEphemeris;->mSlotNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", healthState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GlonassSatelliteEphemeris;->mHealthState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", frameTimeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris;->mFrameTimeSeconds:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ", ageInDays = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GlonassSatelliteEphemeris;->mAgeInDays:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", updateIntervalMinutes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GlonassSatelliteEphemeris;->mUpdateIntervalMinutes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", isUpdateIntervalOdd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/location/GlonassSatelliteEphemeris;->mUpdateIntervalOdd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, ", isGlonassM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/location/GlonassSatelliteEphemeris;->mGlonassM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", satelliteClockModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, ", satelliteOrbitModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 176
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mSlotNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mHealthState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mFrameTimeSeconds:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 179
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mAgeInDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mUpdateIntervalMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-boolean v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mUpdateIntervalOdd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    iget-boolean v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mGlonassM:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 183
    iget-object v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 184
    iget-object v0, p0, Landroid/location/GlonassSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 185
    return-void
.end method
