.class public final Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;
.super Ljava/lang/Object;
.source "WifiP2pDiscoveryConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrequencyMhz:I

.field private final blacklist mScanType:I

.field private final blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 136
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILjava/util/List;)V
    .registers 5
    .param p1, "scanType"    # I
    .param p2, "frequencyMhz"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p3, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mScanType:I

    .line 52
    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mFrequencyMhz:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mVendorData:Ljava/util/List;

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/util/List;Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;-><init>(IILjava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mScanType:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mFrequencyMhz:I

    .line 130
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mVendorData:Ljava/util/List;

    .line 131
    return-void
.end method

.method private static blacklist readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 119
    const-class v1, Landroid/net/wifi/OuiKeyedData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/wifi/OuiKeyedData;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    goto :goto_20

    .line 121
    :cond_17
    const-class v1, Landroid/net/wifi/OuiKeyedData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 123
    :goto_20
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFrequencyMhz()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mFrequencyMhz:I

    return v0
.end method

.method public whitelist getScanType()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mScanType:I

    return v0
.end method

.method public whitelist getVendorData()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mVendorData:Ljava/util/List;

    return-object v0

    .line 85
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "\n scanType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mScanType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "\n frequencyMhz: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mFrequencyMhz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, "\n vendorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mVendorData:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mScanType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mFrequencyMhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 112
    return-void
.end method
