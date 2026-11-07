.class Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1796
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 1798
    .local v0, "netProp":Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1799
    .local v1, "iface":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 1800
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1802
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1803
    .local v2, "addressCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    const/4 v4, 0x0

    if-ge v3, v2, :cond_22

    .line 1804
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    invoke-virtual {v0, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1803
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1806
    .end local v3    # "i":I
    :cond_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1807
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_27
    if-ge v3, v2, :cond_36

    .line 1809
    :try_start_29
    invoke-static {p1}, Landroid/net/LinkProperties;->-$$Nest$smreadAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z
    :try_end_30
    .catch Ljava/net/UnknownHostException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_32

    .line 1810
    :catch_31
    move-exception v5

    :goto_32
    nop

    .line 1807
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1812
    .end local v3    # "i":I
    :cond_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1813
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3b
    if-ge v3, v2, :cond_4a

    .line 1815
    :try_start_3d
    invoke-static {p1}, Landroid/net/LinkProperties;->-$$Nest$smreadAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/LinkProperties;->addValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z
    :try_end_44
    .catch Ljava/net/UnknownHostException; {:try_start_3d .. :try_end_44} :catch_45

    goto :goto_46

    .line 1816
    :catch_45
    move-exception v5

    :goto_46
    nop

    .line 1813
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1818
    .end local v3    # "i":I
    :cond_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->setUsePrivateDns(Z)V

    .line 1819
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->setPrivateDnsServerName(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1821
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5d
    if-ge v3, v2, :cond_6c

    .line 1823
    :try_start_5f
    invoke-static {p1}, Landroid/net/LinkProperties;->-$$Nest$smreadAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z
    :try_end_66
    .catch Ljava/net/UnknownHostException; {:try_start_5f .. :try_end_66} :catch_67

    goto :goto_68

    .line 1824
    :catch_67
    move-exception v5

    :goto_68
    nop

    .line 1821
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 1826
    .end local v3    # "i":I
    :cond_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1828
    nop

    .line 1829
    :try_start_74
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 1828
    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->setDhcpServerAddress(Ljava/net/Inet4Address;)V
    :try_end_81
    .catch Ljava/net/UnknownHostException; {:try_start_74 .. :try_end_81} :catch_82

    goto :goto_83

    .line 1830
    :catch_82
    move-exception v3

    :goto_83
    nop

    .line 1831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1832
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1834
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_97
    if-ge v3, v2, :cond_a5

    .line 1835
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    invoke-virtual {v0, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1834
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    .line 1837
    .end local v3    # "i":I
    :cond_a5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b5

    .line 1838
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/ProxyInfo;

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1840
    :cond_b5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->setNat64Prefix(Landroid/net/IpPrefix;)V

    .line 1841
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1842
    .local v3, "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    const-class v5, Landroid/net/LinkProperties;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1843
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .line 1844
    .local v6, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v0, v6}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 1845
    .end local v6    # "stackedLink":Landroid/net/LinkProperties;
    goto :goto_d0

    .line 1846
    :cond_e0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/net/LinkProperties;->setWakeOnLanSupported(Z)V

    .line 1848
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/net/LinkProperties;->setCaptivePortalApiUrl(Landroid/net/Uri;)V

    .line 1849
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/CaptivePortalData;

    invoke-virtual {v0, v4}, Landroid/net/LinkProperties;->setCaptivePortalData(Landroid/net/CaptivePortalData;)V

    .line 1850
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

    .line 1794
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/LinkProperties;
    .registers 3
    .param p1, "size"    # I

    .line 1854
    new-array v0, p1, [Landroid/net/LinkProperties;

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

    .line 1794
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1
.end method
