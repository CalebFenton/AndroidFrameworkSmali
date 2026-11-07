.class public final Landroid/location/GnssAlmanac;
.super Ljava/lang/Object;
.source "GnssAlmanac.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssAlmanac$Builder;,
        Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAlmanac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCompleteAlmanacProvided:Z

.field private final blacklist mGnssSatelliteAlmanacs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIoda:I

.field private final blacklist mIssueDateMillis:J

.field private final blacklist mToaSeconds:I

.field private final blacklist mWeekNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 164
    new-instance v0, Landroid/location/GnssAlmanac$1;

    invoke-direct {v0}, Landroid/location/GnssAlmanac$1;-><init>()V

    sput-object v0, Landroid/location/GnssAlmanac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GnssAlmanac$Builder;)V
    .registers 6
    .param p1, "builder"    # Landroid/location/GnssAlmanac$Builder;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmIssueDateMillis(Landroid/location/GnssAlmanac$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 89
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmIoda(Landroid/location/GnssAlmanac$Builder;)I

    move-result v0

    if-ltz v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 90
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmWeekNumber(Landroid/location/GnssAlmanac$Builder;)I

    move-result v0

    if-ltz v0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 91
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmToaSeconds(Landroid/location/GnssAlmanac$Builder;)I

    move-result v0

    const v1, 0x93a80

    const-string v3, "ToaSeconds"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 92
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmGnssSatelliteAlmanacs(Landroid/location/GnssAlmanac$Builder;)Ljava/util/List;

    move-result-object v0

    const-string v1, "GnssSatelliteAlmanacs cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmIssueDateMillis(Landroid/location/GnssAlmanac$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssAlmanac;->mIssueDateMillis:J

    .line 95
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmIoda(Landroid/location/GnssAlmanac$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssAlmanac;->mIoda:I

    .line 96
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmWeekNumber(Landroid/location/GnssAlmanac$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssAlmanac;->mWeekNumber:I

    .line 97
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmToaSeconds(Landroid/location/GnssAlmanac$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssAlmanac;->mToaSeconds:I

    .line 98
    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmCompleteAlmanacProvided(Landroid/location/GnssAlmanac$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssAlmanac;->mCompleteAlmanacProvided:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/GnssAlmanac$Builder;->-$$Nest$fgetmGnssSatelliteAlmanacs(Landroid/location/GnssAlmanac$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAlmanac;->mGnssSatelliteAlmanacs:Ljava/util/List;

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GnssAlmanac$Builder;Landroid/location/GnssAlmanac-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssAlmanac;-><init>(Landroid/location/GnssAlmanac$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGnssSatelliteAlmanacs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/location/GnssAlmanac;->mGnssSatelliteAlmanacs:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getIoda()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/location/GnssAlmanac;->mIoda:I

    return v0
.end method

.method public blacklist getIssueDateMillis()J
    .registers 3

    .line 106
    iget-wide v0, p0, Landroid/location/GnssAlmanac;->mIssueDateMillis:J

    return-wide v0
.end method

.method public blacklist getToaSeconds()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/location/GnssAlmanac;->mToaSeconds:I

    return v0
.end method

.method public blacklist getWeekNumber()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/location/GnssAlmanac;->mWeekNumber:I

    return v0
.end method

.method public blacklist isCompleteAlmanacProvided()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Landroid/location/GnssAlmanac;->mCompleteAlmanacProvided:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssAlmanac["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "issueDateMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAlmanac;->mIssueDateMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, ", ioda="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssAlmanac;->mIoda:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ", weekNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssAlmanac;->mWeekNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ", toaSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssAlmanac;->mToaSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ", completeAlmanacProvided="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/location/GnssAlmanac;->mCompleteAlmanacProvided:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, ", satelliteAlmanacs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssAlmanac;->mGnssSatelliteAlmanacs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget-wide v0, p0, Landroid/location/GnssAlmanac;->mIssueDateMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget v0, p0, Landroid/location/GnssAlmanac;->mIoda:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/location/GnssAlmanac;->mWeekNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/location/GnssAlmanac;->mToaSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-boolean v0, p0, Landroid/location/GnssAlmanac;->mCompleteAlmanacProvided:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 161
    iget-object v0, p0, Landroid/location/GnssAlmanac;->mGnssSatelliteAlmanacs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 162
    return-void
.end method
