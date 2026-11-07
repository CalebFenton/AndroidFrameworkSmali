.class public final Landroid/net/wifi/WifiAvailableChannel;
.super Ljava/lang/Object;
.source "WifiAvailableChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiAvailableChannel$Filter;,
        Landroid/net/wifi/WifiAvailableChannel$OpMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiAvailableChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FILTER_CELLULAR_COEXISTENCE:I = 0x1

.field public static final blacklist FILTER_CONCURRENCY:I = 0x2

.field public static final blacklist FILTER_NAN_INSTANT_MODE:I = 0x4

.field public static final blacklist FILTER_REGULATORY:I = 0x0

.field public static final whitelist OP_MODE_SAP:I = 0x2

.field public static final whitelist OP_MODE_STA:I = 0x1

.field public static final whitelist OP_MODE_TDLS:I = 0x20

.field public static final whitelist OP_MODE_WIFI_AWARE:I = 0x10

.field public static final whitelist OP_MODE_WIFI_DIRECT_CLI:I = 0x4

.field public static final whitelist OP_MODE_WIFI_DIRECT_GO:I = 0x8


# instance fields
.field private blacklist mChannelWidth:I

.field private blacklist mFrequency:I

.field private blacklist mOpModes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 238
    new-instance v0, Landroid/net/wifi/WifiAvailableChannel$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiAvailableChannel$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiAvailableChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "freq"    # I
    .param p2, "opModes"    # I

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiAvailableChannel;-><init>(III)V

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "freq"    # I
    .param p2, "opModes"    # I
    .param p3, "channelWidth"    # I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    .line 145
    iput p2, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    .line 146
    iput p3, p0, Landroid/net/wifi/WifiAvailableChannel;->mChannelWidth:I

    .line 147
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiAvailableChannel;->readFromParcel(Landroid/os/Parcel;)V

    .line 151
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/WifiAvailableChannel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiAvailableChannel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getUsableFilter()I
    .registers 1

    .line 180
    const/4 v0, 0x3

    return v0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mChannelWidth:I

    .line 157
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 206
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 207
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 208
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/WifiAvailableChannel;

    .line 209
    .local v2, "that":Landroid/net/wifi/WifiAvailableChannel;
    iget v3, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    iget v4, v2, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    iget v4, v2, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/net/wifi/WifiAvailableChannel;->mChannelWidth:I

    iget v4, v2, Landroid/net/wifi/WifiAvailableChannel;->mChannelWidth:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 207
    .end local v2    # "that":Landroid/net/wifi/WifiAvailableChannel;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public whitelist getChannelWidth()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mChannelWidth:I

    return v0
.end method

.method public whitelist getFrequencyMhz()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    return v0
.end method

.method public whitelist getOperationalModes()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 216
    iget v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiAvailableChannel;->mChannelWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "mFrequency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    const-string v2, ", mChannelWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiAvailableChannel;->mChannelWidth:I

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    const-string v2, ", mOpModes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 233
    iget v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mChannelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return-void
.end method
