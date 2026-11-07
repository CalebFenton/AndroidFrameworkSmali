.class public Landroid/net/wifi/nl80211/ChannelSettings;
.super Ljava/lang/Object;
.source "ChannelSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/ChannelSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ChannelSettings"


# instance fields
.field public blacklist frequency:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/net/wifi/nl80211/ChannelSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/ChannelSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/ChannelSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 42
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/nl80211/ChannelSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 43
    return v2

    .line 45
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/ChannelSettings;

    .line 46
    .local v1, "channel":Landroid/net/wifi/nl80211/ChannelSettings;
    if-nez v1, :cond_10

    .line 47
    return v2

    .line 49
    :cond_10
    iget v3, p0, Landroid/net/wifi/nl80211/ChannelSettings;->frequency:I

    iget v4, v1, Landroid/net/wifi/nl80211/ChannelSettings;->frequency:I

    if-ne v3, v4, :cond_17

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 55
    iget v0, p0, Landroid/net/wifi/nl80211/ChannelSettings;->frequency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget v0, p0, Landroid/net/wifi/nl80211/ChannelSettings;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void
.end method
