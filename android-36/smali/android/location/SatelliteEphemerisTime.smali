.class public final Landroid/location/SatelliteEphemerisTime;
.super Ljava/lang/Object;
.source "SatelliteEphemerisTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/SatelliteEphemerisTime$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/SatelliteEphemerisTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIode:I

.field private final blacklist mToeSeconds:I

.field private final blacklist mWeekNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Landroid/location/SatelliteEphemerisTime$1;

    invoke-direct {v0}, Landroid/location/SatelliteEphemerisTime$1;-><init>()V

    sput-object v0, Landroid/location/SatelliteEphemerisTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/SatelliteEphemerisTime$Builder;)V
    .registers 6
    .param p1, "builder"    # Landroid/location/SatelliteEphemerisTime$Builder;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Landroid/location/SatelliteEphemerisTime$Builder;->-$$Nest$fgetmIode(Landroid/location/SatelliteEphemerisTime$Builder;)I

    move-result v0

    const/16 v1, 0x3ff

    const-string v2, "Iode"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 52
    invoke-static {p1}, Landroid/location/SatelliteEphemerisTime$Builder;->-$$Nest$fgetmWeekNumber(Landroid/location/SatelliteEphemerisTime$Builder;)I

    move-result v0

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v3

    :goto_18
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 53
    invoke-static {p1}, Landroid/location/SatelliteEphemerisTime$Builder;->-$$Nest$fgetmToeSeconds(Landroid/location/SatelliteEphemerisTime$Builder;)I

    move-result v0

    const v1, 0x93a7f

    const-string v2, "ToeSeconds"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 54
    invoke-static {p1}, Landroid/location/SatelliteEphemerisTime$Builder;->-$$Nest$fgetmIode(Landroid/location/SatelliteEphemerisTime$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/SatelliteEphemerisTime;->mIode:I

    .line 55
    invoke-static {p1}, Landroid/location/SatelliteEphemerisTime$Builder;->-$$Nest$fgetmWeekNumber(Landroid/location/SatelliteEphemerisTime$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/SatelliteEphemerisTime;->mWeekNumber:I

    .line 56
    invoke-static {p1}, Landroid/location/SatelliteEphemerisTime$Builder;->-$$Nest$fgetmToeSeconds(Landroid/location/SatelliteEphemerisTime$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/SatelliteEphemerisTime;->mToeSeconds:I

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/SatelliteEphemerisTime$Builder;Landroid/location/SatelliteEphemerisTime-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/SatelliteEphemerisTime;-><init>(Landroid/location/SatelliteEphemerisTime$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIode()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/location/SatelliteEphemerisTime;->mIode:I

    return v0
.end method

.method public blacklist getToeSeconds()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/location/SatelliteEphemerisTime;->mToeSeconds:I

    return v0
.end method

.method public blacklist getWeekNumber()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/location/SatelliteEphemerisTime;->mWeekNumber:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SatelliteEphemerisTime["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "iode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/SatelliteEphemerisTime;->mIode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", weekNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/SatelliteEphemerisTime;->mWeekNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", toeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/SatelliteEphemerisTime;->mToeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget v0, p0, Landroid/location/SatelliteEphemerisTime;->mIode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/location/SatelliteEphemerisTime;->mWeekNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/location/SatelliteEphemerisTime;->mToeSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void
.end method
