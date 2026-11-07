.class public final Landroid/net/wifi/nl80211/NativeScanResult;
.super Ljava/lang/Object;
.source "NativeScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/NativeScanResult$BssCapabilityBits;
    }
.end annotation


# static fields
.field public static final whitelist BSS_CAPABILITY_APSD:I = 0x800

.field public static final whitelist BSS_CAPABILITY_CF_POLLABLE:I = 0x4

.field public static final whitelist BSS_CAPABILITY_CF_POLL_REQUEST:I = 0x8

.field public static final whitelist BSS_CAPABILITY_CHANNEL_AGILITY:I = 0x80

.field public static final whitelist BSS_CAPABILITY_DELAYED_BLOCK_ACK:I = 0x4000

.field public static final whitelist BSS_CAPABILITY_DMG_ESS:I = 0x3

.field public static final whitelist BSS_CAPABILITY_DMG_IBSS:I = 0x1

.field public static final whitelist BSS_CAPABILITY_DSSS_OFDM:I = 0x2000

.field public static final whitelist BSS_CAPABILITY_ESS:I = 0x1

.field public static final whitelist BSS_CAPABILITY_IBSS:I = 0x2

.field public static final whitelist BSS_CAPABILITY_IMMEDIATE_BLOCK_ACK:I = 0x8000

.field public static final whitelist BSS_CAPABILITY_PBCC:I = 0x40

.field public static final whitelist BSS_CAPABILITY_PRIVACY:I = 0x10

.field public static final whitelist BSS_CAPABILITY_QOS:I = 0x200

.field public static final whitelist BSS_CAPABILITY_RADIO_MANAGEMENT:I = 0x1000

.field public static final whitelist BSS_CAPABILITY_SHORT_PREAMBLE:I = 0x20

.field public static final whitelist BSS_CAPABILITY_SHORT_SLOT_TIME:I = 0x400

.field public static final whitelist BSS_CAPABILITY_SPECTRUM_MANAGEMENT:I = 0x100

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "NativeScanResult"


# instance fields
.field public blacklist associated:Z

.field public blacklist bssid:[B

.field public blacklist capability:I

.field public blacklist frequency:I

.field public blacklist infoElement:[B

.field public blacklist radioChainInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/RadioChainInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist signalMbm:I

.field public blacklist ssid:[B

.field public blacklist tsf:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 289
    new-instance v0, Landroid/net/wifi/nl80211/NativeScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/NativeScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/NativeScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBssid()Landroid/net/MacAddress;
    .registers 4

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->bssid:[B

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 90
    :catch_7
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/nl80211/NativeScanResult;->bssid:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeScanResult"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getCapabilities()I
    .registers 2

    .line 250
    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->capability:I

    return v0
.end method

.method public whitelist getFrequencyMhz()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->frequency:I

    return v0
.end method

.method public whitelist getInformationElements()[B
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->infoElement:[B

    return-object v0
.end method

.method public whitelist getRadioChainInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/RadioChainInfo;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->radioChainInfos:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSignalMbm()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->signalMbm:I

    return v0
.end method

.method public whitelist getSsid()[B
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->ssid:[B

    return-object v0
.end method

.method public whitelist getTsf()J
    .registers 3

    .line 129
    iget-wide v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->tsf:J

    return-wide v0
.end method

.method public whitelist isAssociated()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->associated:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 277
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->ssid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 278
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->bssid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 279
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->infoElement:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 280
    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->signalMbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-wide v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->tsf:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 283
    iget v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->capability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->associated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeScanResult;->radioChainInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 286
    return-void
.end method
