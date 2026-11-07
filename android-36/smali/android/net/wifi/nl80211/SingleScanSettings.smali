.class public Landroid/net/wifi/nl80211/SingleScanSettings;
.super Ljava/lang/Object;
.source "SingleScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/SingleScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SingleScanSettings"


# instance fields
.field public blacklist channelSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/nl80211/ChannelSettings;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist enable6GhzRnr:Z

.field public blacklist hiddenNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/nl80211/HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist scanType:I

.field public blacklist vendorIes:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisValidScanType(I)Z
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/nl80211/SingleScanSettings;->isValidScanType(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Landroid/net/wifi/nl80211/SingleScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/SingleScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isValidScanType(I)Z
    .registers 3
    .param p0, "scanType"    # I

    .line 77
    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 48
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/nl80211/SingleScanSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 49
    return v2

    .line 51
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/SingleScanSettings;

    .line 52
    .local v1, "settings":Landroid/net/wifi/nl80211/SingleScanSettings;
    if-nez v1, :cond_10

    .line 53
    return v2

    .line 55
    :cond_10
    iget v3, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I

    iget v4, v1, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I

    if-ne v3, v4, :cond_3b

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->enable6GhzRnr:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/SingleScanSettings;->enable6GhzRnr:Z

    if-ne v3, v4, :cond_3b

    iget-object v3, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->vendorIes:[B

    iget-object v4, v1, Landroid/net/wifi/nl80211/SingleScanSettings;->vendorIes:[B

    .line 59
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v2

    .line 55
    :goto_3c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 65
    iget v0, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->enable6GhzRnr:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->vendorIes:[B

    .line 66
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget v0, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I

    invoke-static {v0}, Landroid/net/wifi/nl80211/SingleScanSettings;->isValidScanType(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid scan type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleScanSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_22
    iget v0, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->enable6GhzRnr:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 93
    iget-object v0, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->vendorIes:[B

    if-nez v0, :cond_41

    .line 96
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_46

    .line 98
    :cond_41
    iget-object v0, p0, Landroid/net/wifi/nl80211/SingleScanSettings;->vendorIes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    :goto_46
    return-void
.end method
