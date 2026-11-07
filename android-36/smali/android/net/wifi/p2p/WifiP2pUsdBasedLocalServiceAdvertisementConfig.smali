.class public final Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;
.super Ljava/lang/Object;
.source "WifiP2pUsdBasedLocalServiceAdvertisementConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist USD_DEFAULT_DISCOVERY_CHANNEL_MHZ:I = 0x985


# instance fields
.field private blacklist mFrequencyMhz:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "frequencyMhz"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;->mFrequencyMhz:I

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;->mFrequencyMhz:I

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFrequencyMhz()I
    .registers 2

    .line 55
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;->mFrequencyMhz:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiP2pUsdBasedLocalServiceAdvertisementConfig:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "\n Frequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;->mFrequencyMhz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pUsdBasedLocalServiceAdvertisementConfig;->mFrequencyMhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
