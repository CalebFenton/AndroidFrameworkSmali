.class public final Landroid/net/wifi/nl80211/NativeWifiClient;
.super Ljava/lang/Object;
.source "NativeWifiClient.java"

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
            "Landroid/net/wifi/nl80211/NativeWifiClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMacAddress:Landroid/net/MacAddress;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Landroid/net/wifi/nl80211/NativeWifiClient$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/NativeWifiClient$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/NativeWifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/MacAddress;)V
    .registers 2
    .param p1, "macAddress"    # Landroid/net/MacAddress;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 55
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 56
    :cond_4
    instance-of v0, p1, Landroid/net/wifi/nl80211/NativeWifiClient;

    if-nez v0, :cond_a

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/nl80211/NativeWifiClient;

    .line 60
    .local v0, "other":Landroid/net/wifi/nl80211/NativeWifiClient;
    iget-object v1, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    iget-object v2, v0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 42
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget-object v0, p0, Landroid/net/wifi/nl80211/NativeWifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 82
    return-void
.end method
