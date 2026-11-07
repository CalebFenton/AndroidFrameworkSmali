.class public final Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;
.super Ljava/lang/Object;
.source "WifiP2pUsdBasedServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mServiceProtocolType:I

.field private blacklist mServiceSpecificInfo:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 4
    .param p1, "serviceProtocolType"    # I
    .param p2, "serviceSpecificInfo"    # [B

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceProtocolType:I

    .line 61
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceProtocolType:I

    .line 62
    iput-object p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceSpecificInfo:[B

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getServiceProtocolType()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceProtocolType:I

    return v0
.end method

.method public whitelist getServiceSpecificInfo()[B
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceSpecificInfo:[B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiP2pUsdBasedServiceResponse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "\n Protocol type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceProtocolType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "\n Service specific info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceSpecificInfo:[B

    if-nez v2, :cond_1f

    .line 96
    const-string v2, "<null>"

    goto :goto_25

    :cond_1f
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceSpecificInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    .line 95
    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;->mServiceSpecificInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 109
    return-void
.end method
