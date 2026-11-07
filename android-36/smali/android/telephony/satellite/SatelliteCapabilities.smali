.class public final Landroid/telephony/satellite/SatelliteCapabilities;
.super Ljava/lang/Object;
.source "SatelliteCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAntennaPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/AntennaPosition;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsPointingRequired:Z

.field private blacklist mMaxBytesPerOutgoingDatagram:I

.field private blacklist mSupportedRadioTechnologies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/telephony/satellite/SatelliteCapabilities$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteCapabilities$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;ZILjava/util/Map;)V
    .registers 6
    .param p2, "isPointingRequired"    # Z
    .param p3, "maxBytesPerOutgoingDatagram"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;ZI",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/AntennaPosition;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "supportedRadioTechnologies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "antennaPositionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/telephony/satellite/AntennaPosition;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p1, :cond_b

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_c

    :cond_b
    move-object v0, p1

    :goto_c
    iput-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    .line 69
    iput-boolean p2, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mIsPointingRequired:Z

    .line 70
    iput p3, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mMaxBytesPerOutgoingDatagram:I

    .line 71
    iput-object p4, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    .line 72
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    .local v0, "numSupportedRadioTechnologies":I
    if-lez v0, :cond_20

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_20

    .line 216
    iget-object v2, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 220
    .end local v1    # "i":I
    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mIsPointingRequired:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mMaxBytesPerOutgoingDatagram:I

    .line 223
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .local v1, "antennaPositionMapSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_58

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .local v3, "key":I
    const-class v4, Landroid/telephony/satellite/AntennaPosition;

    .line 228
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Landroid/telephony/satellite/AntennaPosition;

    .line 227
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/satellite/AntennaPosition;

    .line 229
    .local v4, "antennaPosition":Landroid/telephony/satellite/AntennaPosition;
    iget-object v5, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v3    # "key":I
    .end local v4    # "antennaPosition":Landroid/telephony/satellite/AntennaPosition;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 231
    .end local v2    # "i":I
    :cond_58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 150
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 151
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 152
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/SatelliteCapabilities;

    .line 153
    .local v2, "that":Landroid/telephony/satellite/SatelliteCapabilities;
    iget-object v3, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    iget-object v4, v2, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-boolean v3, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mIsPointingRequired:Z

    iget-boolean v4, v2, Landroid/telephony/satellite/SatelliteCapabilities;->mIsPointingRequired:Z

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mMaxBytesPerOutgoingDatagram:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteCapabilities;->mMaxBytesPerOutgoingDatagram:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    iget-object v4, v2, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    .line 156
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    .line 153
    :goto_37
    return v0

    .line 151
    .end local v2    # "that":Landroid/telephony/satellite/SatelliteCapabilities;
    :cond_38
    :goto_38
    return v1
.end method

.method public whitelist getAntennaPositionMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/AntennaPosition;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getMaxBytesPerOutgoingDatagram()I
    .registers 2

    .line 189
    iget v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mMaxBytesPerOutgoingDatagram:I

    return v0
.end method

.method public whitelist getSupportedRadioTechnologies()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 161
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mIsPointingRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mMaxBytesPerOutgoingDatagram:I

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 161
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isPointingRequired()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mIsPointingRequired:Z

    return v0
.end method

.method public blacklist setMaxBytesPerOutgoingDatagram(I)V
    .registers 2
    .param p1, "maxBytesPerOutgoingDatagram"    # I

    .line 198
    iput p1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mMaxBytesPerOutgoingDatagram:I

    .line 199
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SupportedRadioTechnology:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    const-string v2, ","

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 127
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 128
    .local v3, "technology":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .end local v3    # "technology":I
    goto :goto_1e

    :cond_35
    goto :goto_3b

    .line 132
    :cond_36
    const-string v1, "none,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :goto_3b
    const-string v1, "isPointingRequired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mIsPointingRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "maxBytesPerOutgoingDatagram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mMaxBytesPerOutgoingDatagram:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "antennaPositionMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 86
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mSupportedRadioTechnologies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 88
    .local v2, "technology":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .end local v2    # "technology":I
    goto :goto_1c

    :cond_30
    goto :goto_34

    .line 91
    :cond_31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    :goto_34
    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mIsPointingRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 95
    iget v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mMaxBytesPerOutgoingDatagram:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    if-eqz v0, :cond_81

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_81

    .line 98
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 99
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteCapabilities;->mAntennaPositionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telephony/satellite/AntennaPosition;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telephony/satellite/AntennaPosition;>;"
    goto :goto_5d

    .line 104
    .end local v0    # "size":I
    :cond_80
    goto :goto_84

    .line 105
    :cond_81
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    :goto_84
    return-void
.end method
