.class public Landroid/net/wifi/nl80211/HiddenNetwork;
.super Ljava/lang/Object;
.source "HiddenNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "HiddenNetwork"


# instance fields
.field public blacklist ssid:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/net/wifi/nl80211/HiddenNetwork$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/HiddenNetwork$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/HiddenNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 40
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 41
    :cond_4
    instance-of v0, p1, Landroid/net/wifi/nl80211/HiddenNetwork;

    if-nez v0, :cond_a

    .line 42
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/nl80211/HiddenNetwork;

    .line 45
    .local v0, "network":Landroid/net/wifi/nl80211/HiddenNetwork;
    iget-object v1, p0, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    iget-object v2, v0, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    iget-object v0, p0, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 67
    return-void
.end method
