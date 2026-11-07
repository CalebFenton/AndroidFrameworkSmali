.class public final Landroid/telephony/satellite/SatelliteAccessConfiguration;
.super Ljava/lang/Object;
.source "SatelliteAccessConfiguration.java"

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
            "Landroid/telephony/satellite/SatelliteAccessConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mSatelliteInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTagIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/telephony/satellite/SatelliteAccessConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteAccessConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Landroid/telephony/satellite/SatelliteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    .line 75
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "satelliteInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/SatelliteInfo;>;"
    .local p2, "tagIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    .line 64
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 132
    :cond_4
    instance-of v1, p1, Landroid/telephony/satellite/SatelliteAccessConfiguration;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Landroid/telephony/satellite/SatelliteAccessConfiguration;

    .line 134
    .local v1, "that":Landroid/telephony/satellite/SatelliteAccessConfiguration;
    iget-object v3, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    .line 134
    :goto_22
    return v0

    .line 132
    .end local v1    # "that":Landroid/telephony/satellite/SatelliteAccessConfiguration;
    :cond_23
    return v2
.end method

.method public blacklist getSatelliteInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTagIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 140
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 141
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 142
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SatelliteAccessConfiguration{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "mSatelliteInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", mTagIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mSatelliteInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteAccessConfiguration;->mTagIdList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 106
    return-void
.end method
