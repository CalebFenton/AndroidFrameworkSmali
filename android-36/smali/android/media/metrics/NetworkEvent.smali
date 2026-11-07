.class public final Landroid/media/metrics/NetworkEvent;
.super Landroid/media/metrics/Event;
.source "NetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/NetworkEvent$Builder;,
        Landroid/media/metrics/NetworkEvent$NetworkType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_2G:I = 0x4

.field public static final whitelist NETWORK_TYPE_3G:I = 0x5

.field public static final whitelist NETWORK_TYPE_4G:I = 0x6

.field public static final whitelist NETWORK_TYPE_5G_NSA:I = 0x7

.field public static final whitelist NETWORK_TYPE_5G_SA:I = 0x8

.field public static final whitelist NETWORK_TYPE_ETHERNET:I = 0x3

.field public static final whitelist NETWORK_TYPE_OFFLINE:I = 0x9

.field public static final whitelist NETWORK_TYPE_OTHER:I = 0x1

.field public static final whitelist NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist NETWORK_TYPE_WIFI:I = 0x2


# instance fields
.field private final blacklist mNetworkType:I

.field private final blacklist mTimeSinceCreatedMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Landroid/media/metrics/NetworkEvent$1;

    invoke-direct {v0}, Landroid/media/metrics/NetworkEvent$1;-><init>()V

    sput-object v0, Landroid/media/metrics/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJLandroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "timeSinceCreatedMillis"    # J
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 110
    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    .line 111
    iput p1, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    .line 112
    iput-wide p2, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    .line 113
    if-nez p4, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p4}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Landroid/media/metrics/NetworkEvent;->mMetricsBundle:Landroid/os/Bundle;

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(IJLandroid/os/Bundle;Landroid/media/metrics/NetworkEvent-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/metrics/NetworkEvent;-><init>(IJLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .local v0, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 184
    .local v1, "timeSinceCreatedMillis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 186
    .local v3, "extras":Landroid/os/Bundle;
    iput v0, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    .line 187
    iput-wide v1, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    .line 188
    iput-object v3, p0, Landroid/media/metrics/NetworkEvent;->mMetricsBundle:Landroid/os/Bundle;

    .line 189
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/metrics/NetworkEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/metrics/NetworkEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist networkTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 80
    packed-switch p0, :pswitch_data_26

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_8
    const-string v0, "NETWORK_TYPE_OFFLINE"

    return-object v0

    .line 98
    :pswitch_b
    const-string v0, "NETWORK_TYPE_5G_SA"

    return-object v0

    .line 96
    :pswitch_e
    const-string v0, "NETWORK_TYPE_5G_NSA"

    return-object v0

    .line 94
    :pswitch_11
    const-string v0, "NETWORK_TYPE_4G"

    return-object v0

    .line 92
    :pswitch_14
    const-string v0, "NETWORK_TYPE_3G"

    return-object v0

    .line 90
    :pswitch_17
    const-string v0, "NETWORK_TYPE_2G"

    return-object v0

    .line 88
    :pswitch_1a
    const-string v0, "NETWORK_TYPE_ETHERNET"

    return-object v0

    .line 86
    :pswitch_1d
    const-string v0, "NETWORK_TYPE_WIFI"

    return-object v0

    .line 84
    :pswitch_20
    const-string v0, "NETWORK_TYPE_OTHER"

    return-object v0

    .line 82
    :pswitch_23
    const-string v0, "NETWORK_TYPE_UNKNOWN"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 157
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 158
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 159
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/NetworkEvent;

    .line 160
    .local v2, "that":Landroid/media/metrics/NetworkEvent;
    iget v3, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    iget v4, v2, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    if-ne v3, v4, :cond_24

    iget-wide v3, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    iget-wide v5, v2, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    .line 158
    .end local v2    # "that":Landroid/media/metrics/NetworkEvent;
    :cond_26
    :goto_26
    return v1
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/media/metrics/NetworkEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    return v0
.end method

.method public whitelist getTimeSinceCreatedMillis()J
    .registers 3

    .line 134
    iget-wide v0, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 166
    iget v0, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkEvent { networkType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSinceCreatedMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 171
    iget v0, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-wide v0, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-object v0, p0, Landroid/media/metrics/NetworkEvent;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method
