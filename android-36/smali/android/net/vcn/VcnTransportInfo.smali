.class public final Landroid/net/vcn/VcnTransportInfo;
.super Ljava/lang/Object;
.source "VcnTransportInfo.java"

# interfaces
.implements Landroid/net/TransportInfo;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnTransportInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnTransportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMinUdpPort4500NatTimeoutSeconds:I

.field private final blacklist mSubId:I

.field private final blacklist mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 229
    new-instance v0, Landroid/net/vcn/VcnTransportInfo$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnTransportInfo$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnTransportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "subId"    # I

    .line 77
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;II)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "minUdpPort4500NatTimeoutSeconds"    # I

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;II)V

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/WifiInfo;)V
    .registers 3
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .line 67
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;II)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/WifiInfo;I)V
    .registers 4
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "minUdpPort4500NatTimeoutSeconds"    # I

    .line 72
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;II)V

    .line 73
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/WifiInfo;II)V
    .registers 4
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "subId"    # I
    .param p3, "minUdpPort4500NatTimeoutSeconds"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 88
    iput p2, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    .line 89
    iput p3, p0, Landroid/net/vcn/VcnTransportInfo;->mMinUdpPort4500NatTimeoutSeconds:I

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiInfo;IILandroid/net/vcn/VcnTransportInfo-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;II)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 145
    instance-of v0, p1, Landroid/net/vcn/VcnTransportInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 146
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnTransportInfo;

    .line 147
    .local v0, "that":Landroid/net/vcn/VcnTransportInfo;
    iget-object v2, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget v2, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    iget v3, v0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    if-ne v2, v3, :cond_20

    iget v2, p0, Landroid/net/vcn/VcnTransportInfo;->mMinUdpPort4500NatTimeoutSeconds:I

    iget v3, v0, Landroid/net/vcn/VcnTransportInfo;->mMinUdpPort4500NatTimeoutSeconds:I

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public blacklist getApplicableRedactions()J
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 193
    const-wide/16 v0, 0x4

    .line 196
    .local v0, "redactions":J
    iget-object v2, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_d

    .line 197
    iget-object v2, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getApplicableRedactions()J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 200
    :cond_d
    return-wide v0
.end method

.method public blacklist getMinUdpPort4500NatTimeoutSeconds()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 135
    iget v0, p0, Landroid/net/vcn/VcnTransportInfo;->mMinUdpPort4500NatTimeoutSeconds:I

    return v0
.end method

.method public blacklist getSubId()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    return v0
.end method

.method public blacklist getWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 140
    iget-object v0, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v1, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/vcn/VcnTransportInfo;->mMinUdpPort4500NatTimeoutSeconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist makeCopy(J)Landroid/net/TransportInfo;
    .registers 7
    .param p1, "redactions"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 177
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 178
    new-instance v0, Landroid/net/vcn/VcnTransportInfo;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;II)V

    return-object v0

    .line 182
    :cond_11
    new-instance v0, Landroid/net/vcn/VcnTransportInfo;

    .line 183
    iget-object v2, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_18

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiInfo;->makeCopy(J)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    :goto_1e
    iget v2, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    iget v3, p0, Landroid/net/vcn/VcnTransportInfo;->mMinUdpPort4500NatTimeoutSeconds:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;II)V

    .line 182
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnTransportInfo { mWifiInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 212
    iget v0, p0, Landroid/net/vcn/VcnTransportInfo;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Landroid/net/vcn/VcnTransportInfo;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 214
    iget v0, p0, Landroid/net/vcn/VcnTransportInfo;->mMinUdpPort4500NatTimeoutSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return-void
.end method
