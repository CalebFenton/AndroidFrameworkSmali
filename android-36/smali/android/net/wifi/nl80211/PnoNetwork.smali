.class public final Landroid/net/wifi/nl80211/PnoNetwork;
.super Ljava/lang/Object;
.source "PnoNetwork.java"

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
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFrequencies:[I

.field private blacklist mIsHidden:Z

.field private blacklist mSsid:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrequencies(Landroid/net/wifi/nl80211/PnoNetwork;)[I
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSsid(Landroid/net/wifi/nl80211/PnoNetwork;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrequencies(Landroid/net/wifi/nl80211/PnoNetwork;[I)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsHidden(Landroid/net/wifi/nl80211/PnoNetwork;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSsid(Landroid/net/wifi/nl80211/PnoNetwork;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Landroid/net/wifi/nl80211/PnoNetwork$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoNetwork$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/PnoNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 112
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 113
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/nl80211/PnoNetwork;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 114
    return v2

    .line 116
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/PnoNetwork;

    .line 117
    .local v1, "network":Landroid/net/wifi/nl80211/PnoNetwork;
    iget-object v3, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    iget-object v4, v1, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    iget-object v4, v1, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    .line 118
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    .line 117
    :goto_29
    return v0
.end method

.method public whitelist getFrequenciesMhz()[I
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-object v0
.end method

.method public whitelist getSsid()[B
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 125
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    .line 127
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    .line 128
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isHidden()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    return v0
.end method

.method public whitelist setFrequenciesMhz([I)V
    .registers 4
    .param p1, "frequenciesMhz"    # [I

    .line 100
    if-eqz p1, :cond_5

    .line 103
    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    .line 104
    return-void

    .line 101
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .line 56
    iput-boolean p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    .line 57
    return-void
.end method

.method public whitelist setSsid([B)V
    .registers 4
    .param p1, "ssid"    # [B

    .line 74
    if-eqz p1, :cond_5

    .line 77
    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    .line 78
    return-void

    .line 75
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 146
    return-void
.end method
