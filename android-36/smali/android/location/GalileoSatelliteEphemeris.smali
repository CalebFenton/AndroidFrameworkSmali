.class public final Landroid/location/GalileoSatelliteEphemeris;
.super Ljava/lang/Object;
.source "GalileoSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GalileoSatelliteEphemeris$Builder;,
        Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;,
        Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GalileoSatelliteEphemeris;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSatelliteClockModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

.field private final blacklist mSatelliteHealth:Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

.field private final blacklist mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

.field private blacklist mSvid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/location/GalileoSatelliteEphemeris$1;

    invoke-direct {v0}, Landroid/location/GalileoSatelliteEphemeris$1;-><init>()V

    sput-object v0, Landroid/location/GalileoSatelliteEphemeris;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GalileoSatelliteEphemeris$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/location/GalileoSatelliteEphemeris$Builder;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSvid(Landroid/location/GalileoSatelliteEphemeris$Builder;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 64
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModels(Landroid/location/GalileoSatelliteEphemeris$Builder;)Ljava/util/List;

    move-result-object v0

    const-string v1, "SatelliteClockModels cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/GalileoSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;

    move-result-object v0

    const-string v1, "SatelliteOrbitModel cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteHealth(Landroid/location/GalileoSatelliteEphemeris$Builder;)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    move-result-object v0

    const-string v1, "SatelliteHealth cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/GalileoSatelliteEphemeris$Builder;)Landroid/location/SatelliteEphemerisTime;

    move-result-object v0

    const-string v1, "SatelliteEphemerisTime cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSvid(Landroid/location/GalileoSatelliteEphemeris$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSvid:I

    .line 72
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteClockModels(Landroid/location/GalileoSatelliteEphemeris$Builder;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "satelliteClockModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteClockModels:Ljava/util/List;

    .line 74
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteOrbitModel(Landroid/location/GalileoSatelliteEphemeris$Builder;)Landroid/location/KeplerianOrbitModel;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    .line 75
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteHealth(Landroid/location/GalileoSatelliteEphemeris$Builder;)Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    .line 76
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->-$$Nest$fgetmSatelliteEphemerisTime(Landroid/location/GalileoSatelliteEphemeris$Builder;)Landroid/location/SatelliteEphemerisTime;

    move-result-object v1

    iput-object v1, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GalileoSatelliteEphemeris$Builder;Landroid/location/GalileoSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GalileoSatelliteEphemeris;-><init>(Landroid/location/GalileoSatelliteEphemeris$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSatelliteClockModels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteClockModels:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSatelliteEphemerisTime()Landroid/location/SatelliteEphemerisTime;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    return-object v0
.end method

.method public blacklist getSatelliteHealth()Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    return-object v0
.end method

.method public blacklist getSatelliteOrbitModel()Landroid/location/KeplerianOrbitModel;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    return-object v0
.end method

.method public blacklist getSvid()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSvid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GalileoSatelliteEphemeris["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GalileoSatelliteEphemeris;->mSvid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", satelliteClockModels = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteClockModels:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ", satelliteOrbitModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", satelliteHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", satelliteEphemerisTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteClockModels:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 144
    iget-object v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteOrbitModel:Landroid/location/KeplerianOrbitModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 145
    iget-object v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteHealth:Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 146
    iget-object v0, p0, Landroid/location/GalileoSatelliteEphemeris;->mSatelliteEphemerisTime:Landroid/location/SatelliteEphemerisTime;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 147
    return-void
.end method
