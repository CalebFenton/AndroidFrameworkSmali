.class Landroid/net/wifi/rtt/ResponderConfig$1;
.super Ljava/lang/Object;
.source "ResponderConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/ResponderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/ResponderConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/ResponderConfig;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1047
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1048
    .local v0, "macAddressPresent":Z
    const/4 v1, 0x0

    .line 1049
    .local v1, "macAddress":Landroid/net/MacAddress;
    if-eqz v0, :cond_10

    .line 1050
    sget-object v2, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/net/MacAddress;

    .line 1052
    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1053
    .local v2, "peerHandlePresent":Z
    const/4 v3, 0x0

    .line 1054
    .local v3, "peerHandle":Landroid/net/wifi/aware/PeerHandle;
    if-eqz v2, :cond_21

    .line 1055
    new-instance v4, Landroid/net/wifi/aware/PeerHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    move-object v3, v4

    .line 1058
    :cond_21
    new-instance v4, Landroid/net/wifi/rtt/ResponderConfig$Builder;

    invoke-direct {v4}, Landroid/net/wifi/rtt/ResponderConfig$Builder;-><init>()V

    .line 1059
    invoke-virtual {v4, v1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setMacAddress(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1060
    invoke-virtual {v4, v3}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setPeerHandle(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1061
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setResponderType(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1062
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->set80211mcSupported(Z)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1063
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->set80211azNtbSupported(Z)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1064
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setChannelWidth(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1065
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setFrequencyMhz(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1066
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setCenterFreq0Mhz(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setCenterFreq1Mhz(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1068
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setPreamble(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1069
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setNtbMinTimeBetweenMeasurementsMicros(J)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1070
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setNtbMaxTimeBetweenMeasurementsMicros(J)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v4

    .line 1071
    .local v4, "builder":Landroid/net/wifi/rtt/ResponderConfig$Builder;
    const-class v5, Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 1072
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1071
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 1074
    .local v5, "secureRangingConfig":Landroid/net/wifi/rtt/SecureRangingConfig;
    if-eqz v5, :cond_8f

    .line 1075
    invoke-virtual {v4, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setSecureRangingConfig(Landroid/net/wifi/rtt/SecureRangingConfig;)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    .line 1077
    :cond_8f
    new-instance v6, Landroid/net/wifi/rtt/ResponderConfig;

    invoke-direct {v6, v4}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/wifi/rtt/ResponderConfig$Builder;)V

    return-object v6
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

    .line 1039
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/ResponderConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/rtt/ResponderConfig;
    .registers 3
    .param p1, "size"    # I

    .line 1042
    new-array v0, p1, [Landroid/net/wifi/rtt/ResponderConfig;

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

    .line 1039
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/ResponderConfig$1;->newArray(I)[Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object p1

    return-object p1
.end method
