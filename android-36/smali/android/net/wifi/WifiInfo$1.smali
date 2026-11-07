.class Landroid/net/wifi/WifiInfo$1;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1689
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    .line 1690
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 1691
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 1693
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setTxLinkSpeedMbps(I)V

    .line 1694
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setRxLinkSpeedMbps(I)V

    .line 1695
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 1696
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_44

    .line 1698
    :try_start_36
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V
    :try_end_41
    .catch Ljava/net/UnknownHostException; {:try_start_36 .. :try_end_41} :catch_42

    goto :goto_43

    .line 1699
    :catch_42
    move-exception v1

    :goto_43
    nop

    .line 1701
    :cond_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_55

    .line 1702
    sget-object v1, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiSsid;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmWifiSsid(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)V

    .line 1704
    :cond_55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmBSSID(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    .line 1705
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmMacAddress(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    .line 1706
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6c

    move v1, v2

    goto :goto_6d

    :cond_6c
    move v1, v3

    :goto_6d
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmMeteredHint(Landroid/net/wifi/WifiInfo;Z)V

    .line 1707
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_78

    move v1, v2

    goto :goto_79

    :cond_78
    move v1, v3

    :goto_79
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmEphemeral(Landroid/net/wifi/WifiInfo;Z)V

    .line 1708
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_84

    move v1, v2

    goto :goto_85

    :cond_84
    move v1, v3

    :goto_85
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmTrusted(Landroid/net/wifi/WifiInfo;Z)V

    .line 1709
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_90

    move v1, v2

    goto :goto_91

    :cond_90
    move v1, v3

    :goto_91
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmOemPaid(Landroid/net/wifi/WifiInfo;Z)V

    .line 1710
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9c

    move v1, v2

    goto :goto_9d

    :cond_9c
    move v1, v3

    :goto_9d
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmOemPrivate(Landroid/net/wifi/WifiInfo;Z)V

    .line 1711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a8

    move v1, v2

    goto :goto_a9

    :cond_a8
    move v1, v3

    :goto_a9
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmCarrierMerged(Landroid/net/wifi/WifiInfo;Z)V

    .line 1712
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiInfo;->score:I

    .line 1713
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmIsUsable(Landroid/net/wifi/WifiInfo;Z)V

    .line 1714
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 1715
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmSuccessfulTxPacketsPerSecond(Landroid/net/wifi/WifiInfo;D)V

    .line 1716
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 1717
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmTxRetriedTxPacketsPerSecond(Landroid/net/wifi/WifiInfo;D)V

    .line 1718
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 1719
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmLostTxPacketsPerSecond(Landroid/net/wifi/WifiInfo;D)V

    .line 1720
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 1721
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmSuccessfulRxPacketsPerSecond(Landroid/net/wifi/WifiInfo;D)V

    .line 1722
    sget-object v1, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SupplicantState;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmSupplicantState(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)V

    .line 1723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_100

    move v1, v2

    goto :goto_101

    :cond_100
    move v1, v3

    :goto_101
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmOsuAp(Landroid/net/wifi/WifiInfo;Z)V

    .line 1724
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmRequestingPackageName(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    .line 1725
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmFqdn(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    .line 1726
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmProviderFriendlyName(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    .line 1727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmWifiStandard(Landroid/net/wifi/WifiInfo;I)V

    .line 1728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmMaxSupportedTxLinkSpeed(Landroid/net/wifi/WifiInfo;I)V

    .line 1729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmMaxSupportedRxLinkSpeed(Landroid/net/wifi/WifiInfo;I)V

    .line 1730
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmPasspointUniqueId(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmSubscriptionId(Landroid/net/wifi/WifiInfo;I)V

    .line 1732
    sget-object v1, Landroid/net/wifi/ScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmInformationElements(Landroid/net/wifi/WifiInfo;Ljava/util/List;)V

    .line 1734
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_152

    .line 1735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmIsPrimary(Landroid/net/wifi/WifiInfo;I)V

    .line 1737
    :cond_152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmSecurityType(Landroid/net/wifi/WifiInfo;I)V

    .line 1738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_160

    goto :goto_161

    :cond_160
    move v2, v3

    :goto_161
    invoke-static {v0, v2}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmRestricted(Landroid/net/wifi/WifiInfo;Z)V

    .line 1739
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmNetworkKey(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    .line 1741
    const-class v1, Landroid/net/MacAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmApMldMacAddress(Landroid/net/wifi/WifiInfo;Landroid/net/MacAddress;)V

    .line 1742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmApMloLinkId(Landroid/net/wifi/WifiInfo;I)V

    .line 1743
    sget-object v1, Landroid/net/wifi/MloLink;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmAffiliatedMloLinks(Landroid/net/wifi/WifiInfo;Ljava/util/List;)V

    .line 1744
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmApTidToLinkMappingNegotiationSupported(Landroid/net/wifi/WifiInfo;Z)V

    .line 1745
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->-$$Nest$fputmVendorData(Landroid/net/wifi/WifiInfo;Ljava/util/List;)V

    .line 1746
    return-object v0
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

    .line 1687
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiInfo;
    .registers 3
    .param p1, "size"    # I

    .line 1750
    new-array v0, p1, [Landroid/net/wifi/WifiInfo;

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

    .line 1687
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->newArray(I)[Landroid/net/wifi/WifiInfo;

    move-result-object p1

    return-object p1
.end method
