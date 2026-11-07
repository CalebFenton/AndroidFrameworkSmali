.class public final Landroid/net/wifi/nl80211/PnoSettings;
.super Ljava/lang/Object;
.source "PnoSettings.java"

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
            "Landroid/net/wifi/nl80211/PnoSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIntervalMs:J

.field private blacklist mMin2gRssi:I

.field private blacklist mMin5gRssi:I

.field private blacklist mMin6gRssi:I

.field private blacklist mPnoNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScanIntervalMultiplier:I

.field private blacklist mScanIterations:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPnoNetworks(Landroid/net/wifi/nl80211/PnoSettings;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIntervalMs(Landroid/net/wifi/nl80211/PnoSettings;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMin2gRssi(Landroid/net/wifi/nl80211/PnoSettings;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMin5gRssi(Landroid/net/wifi/nl80211/PnoSettings;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMin6gRssi(Landroid/net/wifi/nl80211/PnoSettings;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPnoNetworks(Landroid/net/wifi/nl80211/PnoSettings;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScanIntervalMultiplier(Landroid/net/wifi/nl80211/PnoSettings;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIntervalMultiplier:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScanIterations(Landroid/net/wifi/nl80211/PnoSettings;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIterations:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 238
    new-instance v0, Landroid/net/wifi/nl80211/PnoSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 193
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/nl80211/PnoSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 194
    return v2

    .line 196
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/PnoSettings;

    .line 197
    .local v1, "settings":Landroid/net/wifi/nl80211/PnoSettings;
    if-nez v1, :cond_10

    .line 198
    return v2

    .line 200
    :cond_10
    iget-wide v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    iget-wide v5, v1, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_41

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    if-ne v3, v4, :cond_41

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    if-ne v3, v4, :cond_41

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    if-ne v3, v4, :cond_41

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIterations:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mScanIterations:I

    if-ne v3, v4, :cond_41

    iget v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIntervalMultiplier:I

    iget v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mScanIntervalMultiplier:I

    if-ne v3, v4, :cond_41

    iget-object v3, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    .line 206
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_42

    :cond_41
    move v0, v2

    .line 200
    :goto_42
    return v0
.end method

.method public whitelist getIntervalMillis()J
    .registers 3

    .line 57
    iget-wide v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    return-wide v0
.end method

.method public whitelist getMin2gRssiDbm()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    return v0
.end method

.method public whitelist getMin5gRssiDbm()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    return v0
.end method

.method public whitelist getMin6gRssiDbm()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    return v0
.end method

.method public whitelist getPnoNetworks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getScanIntervalMultiplier()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIntervalMultiplier:I

    return v0
.end method

.method public whitelist getScanIterations()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIterations:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 212
    iget-wide v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIterations:I

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIntervalMultiplier:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setIntervalMillis(J)V
    .registers 3
    .param p1, "intervalMillis"    # J

    .line 66
    iput-wide p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    .line 67
    return-void
.end method

.method public whitelist setMin2gRssiDbm(I)V
    .registers 2
    .param p1, "min2gRssiDbm"    # I

    .line 86
    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    .line 87
    return-void
.end method

.method public whitelist setMin5gRssiDbm(I)V
    .registers 2
    .param p1, "min5gRssiDbm"    # I

    .line 106
    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    .line 107
    return-void
.end method

.method public whitelist setMin6gRssiDbm(I)V
    .registers 2
    .param p1, "min6gRssiDbm"    # I

    .line 126
    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    .line 127
    return-void
.end method

.method public whitelist setPnoNetworks(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "pnoNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/nl80211/PnoNetwork;>;"
    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    .line 187
    return-void
.end method

.method public whitelist setScanIntervalMultiplier(I)V
    .registers 2
    .param p1, "scanIntervalMultiplier"    # I

    .line 166
    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIntervalMultiplier:I

    .line 167
    return-void
.end method

.method public whitelist setScanIterations(I)V
    .registers 2
    .param p1, "scanIterations"    # I

    .line 146
    iput p1, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIterations:I

    .line 147
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 228
    iget-wide v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mIntervalMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin2gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin5gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mMin6gRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIterations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mScanIntervalMultiplier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoSettings;->mPnoNetworks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 235
    return-void
.end method
