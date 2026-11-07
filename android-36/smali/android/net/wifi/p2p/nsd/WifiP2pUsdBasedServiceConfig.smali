.class public final Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
.super Ljava/lang/Object;
.source "WifiP2pUsdBasedServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$Builder;,
        Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$ServiceProtocolType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SERVICE_PROTOCOL_TYPE_BONJOUR:I = 0x1

.field public static final whitelist SERVICE_PROTOCOL_TYPE_GENERIC:I = 0x2

.field private static final blacklist SERVICE_SPECIFIC_INFO_MAXIMUM_LENGTH:I = 0x400


# instance fields
.field private blacklist mServiceName:Ljava/lang/String;

.field private blacklist mServiceProtocolType:I

.field private blacklist mServiceSpecificInfo:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmServiceName(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceProtocolType(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceProtocolType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceSpecificInfo(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceSpecificInfo:[B

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 150
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getMaxAllowedServiceSpecificInfoLength()I
    .registers 1

    .line 119
    const/16 v0, 0x400

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceProtocolType()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceProtocolType:I

    return v0
.end method

.method public whitelist getServiceSpecificInfo()[B
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceSpecificInfo:[B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiP2pUsdBasedServiceConfig:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "\n Protocol type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceProtocolType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "\n Service name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "\n Service specific info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceSpecificInfo:[B

    if-nez v2, :cond_2a

    .line 132
    const-string v2, "<null>"

    goto :goto_30

    :cond_2a
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceSpecificInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    .line 131
    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    return-void
.end method
