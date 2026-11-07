.class Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .registers 24
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2035
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 2036
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 2037
    sget-object v2, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/net/wifi/WifiSsid;

    move-object v5, v1

    goto :goto_16

    .line 2036
    :cond_15
    move-object v5, v1

    .line 2039
    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .local v5, "wifiSsid":Landroid/net/wifi/WifiSsid;
    :goto_16
    new-instance v4, Landroid/net/wifi/ScanResult;

    .line 2041
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2042
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2043
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 2044
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2045
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 2046
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2047
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2050
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 2052
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2053
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v20

    const/16 v21, 0x0

    invoke-direct/range {v4 .. v21}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 2058
    .local v4, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v4, v1}, Landroid/net/wifi/ScanResult;->-$$Nest$fputmWifiStandard(Landroid/net/wifi/ScanResult;I)V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 2060
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_65

    goto :goto_66

    :cond_65
    const/4 v3, 0x0

    :goto_66
    iput-boolean v3, v4, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 2061
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v4, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 2062
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 2063
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 2064
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v4, Landroid/net/wifi/ScanResult;->flags:J

    .line 2065
    sget-object v1, Landroid/net/wifi/ScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v1, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 2067
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2068
    .local v1, "n":I
    if-eqz v1, :cond_a6

    .line 2069
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    .line 2070
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_98
    if-ge v2, v1, :cond_a6

    .line 2071
    iget-object v3, v4, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2070
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 2074
    .end local v2    # "i":I
    :cond_a6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2075
    if-eqz v1, :cond_d0

    .line 2076
    new-array v2, v1, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v2, v4, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 2077
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b1
    if-ge v2, v1, :cond_d0

    .line 2078
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2079
    .local v3, "vendorId":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2080
    .local v6, "elementId":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2081
    .local v7, "len":I
    new-array v8, v7, [B

    .line 2082
    .local v8, "payload":[B
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readByteArray([B)V

    .line 2083
    iget-object v9, v4, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    new-instance v10, Landroid/net/wifi/AnqpInformationElement;

    invoke-direct {v10, v3, v6, v8}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    aput-object v10, v9, v2

    .line 2077
    .end local v3    # "vendorId":I
    .end local v6    # "elementId":I
    .end local v7    # "len":I
    .end local v8    # "payload":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 2087
    .end local v2    # "i":I
    :cond_d0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2088
    if-eqz v1, :cond_fd

    .line 2089
    new-array v2, v1, [Landroid/net/wifi/ScanResult$RadioChainInfo;

    iput-object v2, v4, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 2090
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_db
    if-ge v2, v1, :cond_fd

    .line 2091
    iget-object v3, v4, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    new-instance v6, Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-direct {v6}, Landroid/net/wifi/ScanResult$RadioChainInfo;-><init>()V

    aput-object v6, v3, v2

    .line 2092
    iget-object v3, v4, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v3, v3, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 2093
    iget-object v3, v4, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v3, v3, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    .line 2090
    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    .line 2096
    .end local v2    # "i":I
    :cond_fd
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/net/wifi/ScanResult;->ifaceName:Ljava/lang/String;

    .line 2099
    const-class v2, Landroid/net/MacAddress;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/MacAddress;

    invoke-static {v4, v2}, Landroid/net/wifi/ScanResult;->-$$Nest$fputmApMldMacAddress(Landroid/net/wifi/ScanResult;Landroid/net/MacAddress;)V

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v4, v2}, Landroid/net/wifi/ScanResult;->-$$Nest$fputmApMloLinkId(Landroid/net/wifi/ScanResult;I)V

    .line 2101
    sget-object v2, Landroid/net/wifi/MloLink;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/net/wifi/ScanResult;->-$$Nest$fputmAffiliatedMloLinks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V

    .line 2103
    return-object v4
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

    .line 2033
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/ScanResult;
    .registers 3
    .param p1, "size"    # I

    .line 2106
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

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

    .line 2033
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object p1

    return-object p1
.end method
