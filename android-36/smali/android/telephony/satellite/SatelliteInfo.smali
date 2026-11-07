.class public final Landroid/telephony/satellite/SatelliteInfo;
.super Ljava/lang/Object;
.source "SatelliteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEarfcnRangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/EarfcnRange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mId:Ljava/util/UUID;

.field private blacklist mPosition:Landroid/telephony/satellite/SatellitePosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Landroid/telephony/satellite/SatelliteInfo$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-class v0, Landroid/os/ParcelUuid;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelUuid;

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 79
    .local v0, "parcelUuid":Landroid/os/ParcelUuid;
    if-eqz v0, :cond_19

    .line 80
    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    .line 82
    :cond_19
    const-class v1, Landroid/telephony/satellite/SatellitePosition;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/satellite/SatellitePosition;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/satellite/SatellitePosition;

    iput-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    .line 85
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 86
    sget-object v1, Landroid/telephony/satellite/EarfcnRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Landroid/telephony/satellite/SatellitePosition;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .param p1, "satelliteId"    # Ljava/util/UUID;
    .param p2, "satellitePosition"    # Landroid/telephony/satellite/SatellitePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/telephony/satellite/SatellitePosition;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/EarfcnRange;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p3, "bandList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "earfcnRanges":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/EarfcnRange;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    .line 102
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    .line 103
    iput-object p3, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    .line 104
    iput-object p4, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 182
    :cond_4
    instance-of v1, p1, Landroid/telephony/satellite/SatelliteInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    move-object v1, p1

    check-cast v1, Landroid/telephony/satellite/SatelliteInfo;

    .line 184
    .local v1, "that":Landroid/telephony/satellite/SatelliteInfo;
    iget-object v3, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    .line 185
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    .line 186
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    .line 187
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move v0, v2

    .line 184
    :goto_36
    return v0

    .line 182
    .end local v1    # "that":Landroid/telephony/satellite/SatelliteInfo;
    :cond_37
    return v2
.end method

.method public blacklist getBands()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getEarfcnRanges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/EarfcnRange;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSatelliteId()Ljava/util/UUID;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public blacklist getSatellitePosition()Landroid/telephony/satellite/SatellitePosition;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 192
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 193
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 194
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SatelliteInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ", mBandList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ", mEarfcnRangeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteInfo;->mId:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mPosition:Landroid/telephony/satellite/SatellitePosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 129
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mBandList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteInfo;->mEarfcnRangeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 131
    return-void
.end method
