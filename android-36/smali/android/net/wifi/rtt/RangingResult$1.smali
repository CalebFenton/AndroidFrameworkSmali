.class Landroid/net/wifi/rtt/RangingResult$1;
.super Ljava/lang/Object;
.source "RangingResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/RangingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/RangingResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingResult;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1196
    new-instance v0, Landroid/net/wifi/rtt/RangingResult$Builder;

    invoke-direct {v0}, Landroid/net/wifi/rtt/RangingResult$Builder;-><init>()V

    .line 1197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setStatus(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1199
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    sget-object v1, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    goto :goto_1e

    .line 1200
    :cond_1d
    move-object v1, v2

    .line 1198
    :goto_1e
    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setMacAddress(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1201
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v2, Landroid/net/wifi/aware/PeerHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v2, v1}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    :cond_31
    invoke-virtual {v0, v2}, Landroid/net/wifi/rtt/RangingResult$Builder;->setPeerHandle(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setDistanceMm(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setDistanceStdDevMm(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setRssi(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setNumAttemptedMeasurements(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setNumSuccessfulMeasurements(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1207
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setLci([B)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1208
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setLcr([B)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/rtt/ResponderLocation;

    .line 1209
    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setUnverifiedResponderLocation(Landroid/net/wifi/rtt/ResponderLocation;)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1211
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/rtt/RangingResult$Builder;->setRangingTimestampMillis(J)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1212
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->set80211mcMeasurement(Z)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setMeasurementChannelFrequencyMHz(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setMeasurementBandwidth(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1215
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->set80211azNtbMeasurement(Z)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/rtt/RangingResult$Builder;->setMinTimeBetweenNtbMeasurementsMicros(J)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1217
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/rtt/RangingResult$Builder;->setMaxTimeBetweenNtbMeasurementsMicros(J)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->set80211azInitiatorTxLtfRepetitionsCount(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->set80211azResponderTxLtfRepetitionsCount(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->set80211azNumberOfTxSpatialStreams(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->set80211azNumberOfRxSpatialStreams(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v0

    .line 1222
    .local v0, "builder":Landroid/net/wifi/rtt/RangingResult$Builder;
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 1223
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setVendorData(Ljava/util/List;)Landroid/net/wifi/rtt/RangingResult$Builder;

    .line 1225
    :cond_e4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/RangingResult$Builder;->setRangingAuthenticated(Z)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v1

    .line 1226
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/rtt/RangingResult$Builder;->setRangingFrameProtected(Z)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v1

    .line 1227
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/rtt/RangingResult$Builder;->setSecureHeLtfEnabled(Z)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v1

    .line 1228
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/rtt/RangingResult$Builder;->setPasnComebackAfterMillis(J)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v1

    .line 1229
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/rtt/RangingResult$Builder;->setPasnComebackCookie([B)Landroid/net/wifi/rtt/RangingResult$Builder;

    move-result-object v1

    .line 1230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/rtt/RangingResult$Builder;->setSecureHeLtfProtocolVersion(I)Landroid/net/wifi/rtt/RangingResult$Builder;

    .line 1231
    invoke-virtual {v0}, Landroid/net/wifi/rtt/RangingResult$Builder;->build()Landroid/net/wifi/rtt/RangingResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1188
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/rtt/RangingResult;
    .registers 3
    .param p1, "size"    # I

    .line 1191
    new-array v0, p1, [Landroid/net/wifi/rtt/RangingResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1188
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResult$1;->newArray(I)[Landroid/net/wifi/rtt/RangingResult;

    move-result-object p1

    return-object p1
.end method
