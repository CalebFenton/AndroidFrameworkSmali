.class public final Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;
.super Ljava/lang/Object;
.source "WifiP2pUsdBasedServiceDiscoveryConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist USD_DEFAULT_DISCOVERY_CHANNEL_MHZ:I = 0x985


# instance fields
.field private blacklist mBand:I

.field private blacklist mFrequenciesMhz:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisBandValid(I)Z
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->isBandValid(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I[I)V
    .registers 3
    .param p1, "band"    # I
    .param p2, "frequencies"    # [I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mBand:I

    .line 56
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mFrequenciesMhz:[I

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(I[ILandroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;-><init>(I[I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mBand:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mFrequenciesMhz:[I

    .line 102
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist isBandValid(I)Z
    .registers 3
    .param p0, "band"    # I

    .line 105
    const/16 v0, 0xb

    .line 107
    .local v0, "bandAny":I
    if-eqz p0, :cond_a

    not-int v1, v0

    and-int/2addr v1, p0

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBand()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mBand:I

    return v0
.end method

.method public whitelist getFrequenciesMhz()[I
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mFrequenciesMhz:[I

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiP2pUsdBasedServiceDiscoveryConfig:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "\n Band: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "\n Frequencies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mFrequenciesMhz:[I

    if-nez v2, :cond_1f

    .line 84
    const-string v2, "<null>"

    goto :goto_25

    :cond_1f
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mFrequenciesMhz:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    .line 83
    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedServiceDiscoveryConfig;->mFrequenciesMhz:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 97
    return-void
.end method
