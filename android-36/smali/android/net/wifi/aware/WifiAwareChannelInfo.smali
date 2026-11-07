.class public final Landroid/net/wifi/aware/WifiAwareChannelInfo;
.super Ljava/lang/Object;
.source "WifiAwareChannelInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareChannelInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChannelBandwidth:I

.field private final blacklist mChannelFreq:I

.field private final blacklist mNumSpatialStreams:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/net/wifi/aware/WifiAwareChannelInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareChannelInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "channelFreq"    # I
    .param p2, "channelBandwidth"    # I
    .param p3, "numSpatialStreams"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelFreq:I

    .line 43
    iput p2, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelBandwidth:I

    .line 44
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mNumSpatialStreams:I

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelFreq:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelBandwidth:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mNumSpatialStreams:I

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/aware/WifiAwareChannelInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareChannelInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 121
    return v0

    .line 124
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/aware/WifiAwareChannelInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 125
    return v2

    .line 128
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareChannelInfo;

    .line 129
    .local v1, "lhs":Landroid/net/wifi/aware/WifiAwareChannelInfo;
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelFreq:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelFreq:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelBandwidth:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelBandwidth:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mNumSpatialStreams:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mNumSpatialStreams:I

    if-ne v3, v4, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0
.end method

.method public whitelist getChannelBandwidth()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelBandwidth:I

    return v0
.end method

.method public whitelist getChannelFrequencyMhz()I
    .registers 2

    .line 53
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelFreq:I

    return v0
.end method

.method public whitelist getSpatialStreamCount()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mNumSpatialStreams:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 136
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelFreq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelBandwidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mNumSpatialStreams:I

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

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string v1, ".channelFreq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string v1, ", .channelBandwidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string v1, ", .numSpatialStreams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mNumSpatialStreams:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mChannelBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareChannelInfo;->mNumSpatialStreams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
