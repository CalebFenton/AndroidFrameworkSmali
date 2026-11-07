.class public final Landroid/net/wifi/aware/AwareParams;
.super Ljava/lang/Object;
.source "AwareParams.java"

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
            "Landroid/net/wifi/aware/AwareParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist UNSET_PARAMETER:I = -0x1


# instance fields
.field private blacklist mDiscoveryBeaconIntervalMs:I

.field private blacklist mDw24Ghz:I

.field private blacklist mDw5Ghz:I

.field private blacklist mDw6Ghz:I

.field private blacklist mIsDwEarlyTerminationEnabled:Z

.field private blacklist mMacRandomIntervalSec:I

.field private blacklist mNumSpatialStreamsInDiscovery:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/net/wifi/aware/AwareParams$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/AwareParams$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/AwareParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw24Ghz:I

    .line 39
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw5Ghz:I

    .line 40
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw6Ghz:I

    .line 41
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDiscoveryBeaconIntervalMs:I

    .line 42
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mNumSpatialStreamsInDiscovery:I

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/aware/AwareParams;->mIsDwEarlyTerminationEnabled:Z

    .line 44
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mMacRandomIntervalSec:I

    .line 50
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw24Ghz:I

    .line 39
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw5Ghz:I

    .line 40
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw6Ghz:I

    .line 41
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDiscoveryBeaconIntervalMs:I

    .line 42
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mNumSpatialStreamsInDiscovery:I

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/aware/AwareParams;->mIsDwEarlyTerminationEnabled:Z

    .line 44
    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mMacRandomIntervalSec:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw24Ghz:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw5Ghz:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw6Ghz:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mDiscoveryBeaconIntervalMs:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mNumSpatialStreamsInDiscovery:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/aware/AwareParams;->mIsDwEarlyTerminationEnabled:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/AwareParams;->mMacRandomIntervalSec:I

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/aware/AwareParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/AwareParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDiscoveryBeaconIntervalMillis()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mDiscoveryBeaconIntervalMs:I

    return v0
.end method

.method public whitelist getDiscoveryWindowWakeInterval24Ghz()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw24Ghz:I

    return v0
.end method

.method public whitelist getDiscoveryWindowWakeInterval5Ghz()I
    .registers 2

    .line 182
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw5Ghz:I

    return v0
.end method

.method public blacklist getDiscoveryWindowWakeInterval6Ghz()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw24Ghz:I

    return v0
.end method

.method public whitelist getMacRandomizationIntervalSeconds()I
    .registers 2

    .line 232
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mMacRandomIntervalSec:I

    return v0
.end method

.method public whitelist getNumSpatialStreamsInDiscovery()I
    .registers 2

    .line 214
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mNumSpatialStreamsInDiscovery:I

    return v0
.end method

.method public whitelist isDwEarlyTerminationEnabled()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Landroid/net/wifi/aware/AwareParams;->mIsDwEarlyTerminationEnabled:Z

    return v0
.end method

.method public whitelist setDiscoveryBeaconIntervalMillis(I)V
    .registers 4
    .param p1, "intervalInMs"    # I

    .line 121
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 124
    iput p1, p0, Landroid/net/wifi/aware/AwareParams;->mDiscoveryBeaconIntervalMs:I

    .line 125
    return-void

    .line 122
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Discovery Beacon interval must >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDiscoveryWindow6Ghz(I)V
    .registers 2
    .param p1, "dw"    # I

    .line 110
    iput p1, p0, Landroid/net/wifi/aware/AwareParams;->mDw6Ghz:I

    .line 111
    return-void
.end method

.method public whitelist setDiscoveryWindowWakeInterval24Ghz(I)V
    .registers 4
    .param p1, "dw"    # I

    .line 82
    const/4 v0, 0x5

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    .line 85
    iput p1, p0, Landroid/net/wifi/aware/AwareParams;->mDw24Ghz:I

    .line 86
    return-void

    .line 83
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DW value for 2.4Ghz must be 1 to 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDiscoveryWindowWakeInterval5Ghz(I)V
    .registers 4
    .param p1, "dw"    # I

    .line 98
    const/4 v0, 0x5

    if-gt p1, v0, :cond_8

    if-ltz p1, :cond_8

    .line 101
    iput p1, p0, Landroid/net/wifi/aware/AwareParams;->mDw5Ghz:I

    .line 102
    return-void

    .line 99
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DW value for 5Ghz must be 0 to 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDwEarlyTerminationEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 162
    iput-boolean p1, p0, Landroid/net/wifi/aware/AwareParams;->mIsDwEarlyTerminationEnabled:Z

    .line 163
    return-void
.end method

.method public whitelist setMacRandomizationIntervalSeconds(I)V
    .registers 4
    .param p1, "intervalSec"    # I

    .line 147
    const/16 v0, 0x708

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    .line 151
    iput p1, p0, Landroid/net/wifi/aware/AwareParams;->mMacRandomIntervalSec:I

    .line 152
    return-void

    .line 148
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mac Randomization Interval must be between 1 to 1800 seconds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNumSpatialStreamsInDiscovery(I)V
    .registers 4
    .param p1, "spatialStreamsNum"    # I

    .line 134
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 137
    iput p1, p0, Landroid/net/wifi/aware/AwareParams;->mNumSpatialStreamsInDiscovery:I

    .line 138
    return-void

    .line 135
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number Spatial streams must >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 255
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v0, "sbf":Ljava/lang/StringBuffer;
    const-string v1, "AwareParams ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 257
    const-string v2, "mDw24Ghz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/AwareParams;->mDw24Ghz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 258
    const-string v2, ", mDw5Ghz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/AwareParams;->mDw5Ghz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 259
    const-string v2, ", mDw6Ghz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/AwareParams;->mDw6Ghz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 260
    const-string v2, ", mDiscoveryBeaconIntervalMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/AwareParams;->mDiscoveryBeaconIntervalMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 261
    const-string v2, ", mNumSpatialStreamsInDiscovery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/AwareParams;->mNumSpatialStreamsInDiscovery:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 262
    const-string v2, ", mIsDwEarlyTerminationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/aware/AwareParams;->mIsDwEarlyTerminationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 263
    const-string v2, ", mMacRandomIntervalSec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/AwareParams;->mMacRandomIntervalSec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 264
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 243
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw24Ghz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw5Ghz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mDw6Ghz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mDiscoveryBeaconIntervalMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mNumSpatialStreamsInDiscovery:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-boolean v0, p0, Landroid/net/wifi/aware/AwareParams;->mIsDwEarlyTerminationEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 249
    iget v0, p0, Landroid/net/wifi/aware/AwareParams;->mMacRandomIntervalSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return-void
.end method
