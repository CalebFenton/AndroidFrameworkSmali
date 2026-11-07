.class public final Landroid/location/AuxiliaryInformation;
.super Ljava/lang/Object;
.source "AuxiliaryInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/AuxiliaryInformation$Builder;,
        Landroid/location/AuxiliaryInformation$BeidouB1CSatelliteOrbitType;
    }
.end annotation


# static fields
.field public static final blacklist BDS_B1C_ORBIT_TYPE_GEO:I = 0x1

.field public static final blacklist BDS_B1C_ORBIT_TYPE_IGSO:I = 0x2

.field public static final blacklist BDS_B1C_ORBIT_TYPE_MEO:I = 0x3

.field public static final blacklist BDS_B1C_ORBIT_TYPE_UNDEFINED:I

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/AuxiliaryInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAvailableSignalTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrequencyChannelNumber:I

.field private final blacklist mSatType:I

.field private final blacklist mSvid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 193
    new-instance v0, Landroid/location/AuxiliaryInformation$1;

    invoke-direct {v0}, Landroid/location/AuxiliaryInformation$1;-><init>()V

    sput-object v0, Landroid/location/AuxiliaryInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/AuxiliaryInformation$Builder;)V
    .registers 7
    .param p1, "builder"    # Landroid/location/AuxiliaryInformation$Builder;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {p1}, Landroid/location/AuxiliaryInformation$Builder;->-$$Nest$fgetmSvid(Landroid/location/AuxiliaryInformation$Builder;)I

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

    .line 114
    invoke-static {p1}, Landroid/location/AuxiliaryInformation$Builder;->-$$Nest$fgetmAvailableSignalTypes(Landroid/location/AuxiliaryInformation$Builder;)Ljava/util/List;

    move-result-object v0

    const-string v3, "AvailableSignalTypes cannot be null"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Landroid/location/AuxiliaryInformation$Builder;->-$$Nest$fgetmAvailableSignalTypes(Landroid/location/AuxiliaryInformation$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    goto :goto_26

    :cond_25
    move v2, v1

    :goto_26
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 117
    invoke-static {p1}, Landroid/location/AuxiliaryInformation$Builder;->-$$Nest$fgetmFrequencyChannelNumber(Landroid/location/AuxiliaryInformation$Builder;)I

    move-result v0

    const/4 v2, 0x6

    const-string v3, "FrequencyChannelNumber"

    const/4 v4, -0x7

    invoke-static {v0, v4, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 119
    invoke-static {p1}, Landroid/location/AuxiliaryInformation$Builder;->-$$Nest$fgetmSatType(Landroid/location/AuxiliaryInformation$Builder;)I

    move-result v0

    const/4 v2, 0x3

    const-string v3, "SatType"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 121
    invoke-static {p1}, Landroid/location/AuxiliaryInformation$Builder;->-$$Nest$fgetmSvid(Landroid/location/AuxiliaryInformation$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/AuxiliaryInformation;->mSvid:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/AuxiliaryInformation$Builder;->-$$Nest$fgetmAvailableSignalTypes(Landroid/location/AuxiliaryInformation$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/AuxiliaryInformation;->mAvailableSignalTypes:Ljava/util/List;

    .line 124
    invoke-static {p1}, Landroid/location/AuxiliaryInformation$Builder;->-$$Nest$fgetmFrequencyChannelNumber(Landroid/location/AuxiliaryInformation$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/AuxiliaryInformation;->mFrequencyChannelNumber:I

    .line 125
    invoke-static {p1}, Landroid/location/AuxiliaryInformation$Builder;->-$$Nest$fgetmSatType(Landroid/location/AuxiliaryInformation$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/AuxiliaryInformation;->mSatType:I

    .line 126
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/AuxiliaryInformation$Builder;Landroid/location/AuxiliaryInformation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/AuxiliaryInformation;-><init>(Landroid/location/AuxiliaryInformation$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAvailableSignalTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Landroid/location/AuxiliaryInformation;->mAvailableSignalTypes:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getFrequencyChannelNumber()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/location/AuxiliaryInformation;->mFrequencyChannelNumber:I

    return v0
.end method

.method public blacklist getSatType()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/location/AuxiliaryInformation;->mSatType:I

    return v0
.end method

.method public blacklist getSvid()I
    .registers 2

    .line 147
    iget v0, p0, Landroid/location/AuxiliaryInformation;->mSvid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuxiliaryInformation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/AuxiliaryInformation;->mSvid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, ", availableSignalTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/AuxiliaryInformation;->mAvailableSignalTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", frequencyChannelNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/AuxiliaryInformation;->mFrequencyChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, ", satType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/AuxiliaryInformation;->mSatType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 175
    iget v0, p0, Landroid/location/AuxiliaryInformation;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Landroid/location/AuxiliaryInformation;->mAvailableSignalTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 177
    iget v0, p0, Landroid/location/AuxiliaryInformation;->mFrequencyChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Landroid/location/AuxiliaryInformation;->mSatType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return-void
.end method
