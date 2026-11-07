.class public final Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
.super Ljava/lang/Object;
.source "HotspotNetworkConnectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$Builder;,
        Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_STATUS_CONNECT_TO_HOTSPOT_FAILED:I = 0x9

.field public static final whitelist CONNECTION_STATUS_ENABLING_HOTSPOT:I = 0x1

.field public static final whitelist CONNECTION_STATUS_ENABLING_HOTSPOT_FAILED:I = 0x7

.field public static final whitelist CONNECTION_STATUS_ENABLING_HOTSPOT_TIMEOUT:I = 0x8

.field public static final whitelist CONNECTION_STATUS_NO_CELL_DATA:I = 0x6

.field public static final whitelist CONNECTION_STATUS_PROVISIONING_FAILED:I = 0x3

.field public static final whitelist CONNECTION_STATUS_TETHERING_TIMEOUT:I = 0x4

.field public static final whitelist CONNECTION_STATUS_TETHERING_UNSUPPORTED:I = 0x5

.field public static final whitelist CONNECTION_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist CONNECTION_STATUS_UNKNOWN_ERROR:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 256
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "hotspotNetwork"    # Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->validate(I)V

    .line 184
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    .line 185
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 186
    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    .line 187
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 251
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    invoke-static {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/HotspotNetwork;Landroid/os/Bundle;)V

    .line 251
    return-object v0
.end method

.method private static blacklist validate(I)V
    .registers 3
    .param p0, "status"    # I

    .line 167
    if-eqz p0, :cond_28

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_28

    const/4 v0, 0x3

    if-eq p0, v0, :cond_28

    const/4 v0, 0x4

    if-eq p0, v0, :cond_28

    const/4 v0, 0x5

    if-eq p0, v0, :cond_28

    const/4 v0, 0x6

    if-eq p0, v0, :cond_28

    const/4 v0, 0x7

    if-eq p0, v0, :cond_28

    const/16 v0, 0x8

    if-eq p0, v0, :cond_28

    const/16 v0, 0x9

    if-ne p0, v0, :cond_20

    goto :goto_28

    .line 177
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal connection status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 221
    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 222
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 223
    .local v0, "other":Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    iget v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_1f

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 224
    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getHotspotNetwork()Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 223
    :goto_20
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHotspotNetwork()Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 229
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HotspotNetworkConnectionStatus["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v1, "status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    const-string/jumbo v1, "hotspot network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 239
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mHotspotNetwork:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 242
    return-void
.end method
