.class public final Landroid/net/wifi/WifiClient;
.super Ljava/lang/Object;
.source "WifiClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WifiClient"


# instance fields
.field private final blacklist mApInstanceIdentifier:Ljava/lang/String;

.field private final blacklist mDisconnectReason:I

.field private final blacklist mMacAddress:Landroid/net/MacAddress;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Landroid/net/wifi/WifiClient$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiClient$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/MacAddress;Ljava/lang/String;)V
    .registers 4
    .param p1, "macAddress"    # Landroid/net/MacAddress;
    .param p2, "apInstanceIdentifier"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiClient;-><init>(Landroid/net/MacAddress;Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/MacAddress;Ljava/lang/String;I)V
    .registers 6
    .param p1, "macAddress"    # Landroid/net/MacAddress;
    .param p2, "apInstanceIdentifier"    # Ljava/lang/String;
    .param p3, "disconnectReason"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p1, :cond_11

    .line 103
    const-string v0, "WifiClient"

    const-string v1, "Null MacAddress provided"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    goto :goto_13

    .line 106
    :cond_11
    iput-object p1, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    .line 108
    :goto_13
    iput-object p2, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    .line 109
    iput p3, p0, Landroid/net/wifi/WifiClient;->mDisconnectReason:I

    .line 110
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiClient;->mDisconnectReason:I

    .line 92
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/WifiClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiClient;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 148
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/WifiClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/WifiClient;

    .line 149
    .local v1, "client":Landroid/net/wifi/WifiClient;
    iget-object v3, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, p0, Landroid/net/wifi/WifiClient;->mDisconnectReason:I

    iget v4, v1, Landroid/net/wifi/WifiClient;->mDisconnectReason:I

    if-ne v3, v4, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    .line 149
    :goto_28
    return v0

    .line 148
    .end local v1    # "client":Landroid/net/wifi/WifiClient;
    :cond_29
    return v2
.end method

.method public blacklist getApInstanceIdentifier()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisconnectReason()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/net/wifi/WifiClient;->mDisconnectReason:I

    return v0
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 156
    iget-object v0, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    iget-object v1, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiClient;->mDisconnectReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiClient{mMacAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mApInstanceIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDisconnectReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiClient;->mDisconnectReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    iget-object v0, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Landroid/net/wifi/WifiClient;->mDisconnectReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void
.end method
