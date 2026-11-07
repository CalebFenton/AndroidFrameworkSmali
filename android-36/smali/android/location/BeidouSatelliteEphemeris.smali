.class public final Landroid/location/BeidouSatelliteEphemeris;
.super Ljava/lang/Object;
.source "BeidouSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/BeidouSatelliteEphemeris$Builder;,
        Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;,
        Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;,
        Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/BeidouSatelliteEphemeris;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSatelliteClockModel:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

.field private final blacklist mSatelliteEphemerisTime:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

.field private final blacklist mSatelliteHealth:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

.field private final blacklist mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

.field private final blacklist mSvid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/location/BeidouSatelliteEphemeris$1;

    invoke-direct {v0}, Landroid/location/BeidouSatelliteEphemeris$1;-><init>()V

    sput-object v0, Landroid/location/BeidouSatelliteEphemeris;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/BeidouSatelliteEphemeris$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/location/BeidouSatelliteEphemeris$Builder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSvid(Landroid/location/BeidouSatelliteEphemeris$Builder;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 56
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModel(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    move-result-object v0

    const-string v1, "SatelliteClockModel cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;

    move-result-object v0

    const-string v1, "SatelliteOrbitModel cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteHealth(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    move-result-object v0

    const-string v1, "SatelliteHealth cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    move-result-object v0

    const-string v1, "SatelliteEphemerisTime cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSvid(Landroid/location/BeidouSatelliteEphemeris$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSvid:I

    .line 65
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModel(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    .line 66
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    .line 67
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteHealth(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    move-result-object v0

    iput-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteHealth:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    .line 68
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/BeidouSatelliteEphemeris$Builder;)Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    move-result-object v0

    iput-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/BeidouSatelliteEphemeris$Builder;Landroid/location/BeidouSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/BeidouSatelliteEphemeris;-><init>(Landroid/location/BeidouSatelliteEphemeris$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSatelliteClockModel()Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    return-object v0
.end method

.method public blacklist getSatelliteEphemerisTime()Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    return-object v0
.end method

.method public blacklist getSatelliteHealth()Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteHealth:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    return-object v0
.end method

.method public blacklist getSatelliteOrbitModel()Landroid/location/KeplerianOrbitModel;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    return-object v0
.end method

.method public blacklist getSvid()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSvid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeidouSatelliteEphemeris["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/BeidouSatelliteEphemeris;->mSvid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", satelliteClockModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", satelliteOrbitModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", satelliteHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteHealth:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", satelliteEphemerisTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteClockModel:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    iget-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteHealth:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 138
    iget-object v0, p0, Landroid/location/BeidouSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    return-void
.end method
