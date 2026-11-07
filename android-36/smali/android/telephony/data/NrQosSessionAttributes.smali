.class public final Landroid/telephony/data/NrQosSessionAttributes;
.super Ljava/lang/Object;
.source "NrQosSessionAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/net/QosSessionAttributes;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/NrQosSessionAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist m5Qi:I

.field private final blacklist mAveragingWindow:J

.field private final blacklist mGuaranteedDownlinkBitRate:J

.field private final blacklist mGuaranteedUplinkBitRate:J

.field private final blacklist mMaxDownlinkBitRate:J

.field private final blacklist mMaxUplinkBitRate:J

.field private final blacklist mQfi:I

.field private final blacklist mRemoteAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-class v0, Landroid/telephony/data/NrQosSessionAttributes;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/NrQosSessionAttributes;->TAG:Ljava/lang/String;

    .line 269
    new-instance v0, Landroid/telephony/data/NrQosSessionAttributes$1;

    invoke-direct {v0}, Landroid/telephony/data/NrQosSessionAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/data/NrQosSessionAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIJJJJJLjava/util/List;)V
    .registers 16
    .param p1, "fiveQi"    # I
    .param p2, "qfi"    # I
    .param p3, "maxDownlinkBitRate"    # J
    .param p5, "maxUplinkBitRate"    # J
    .param p7, "guaranteedDownlinkBitRate"    # J
    .param p9, "guaranteedUplinkBitRate"    # J
    .param p11, "averagingWindow"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJJJJ",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p13, "remoteAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const-string/jumbo v0, "remoteAddress must be non-null"

    invoke-static {p13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    iput p1, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    .line 173
    iput p2, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    .line 174
    iput-wide p3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    .line 175
    iput-wide p5, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    .line 176
    iput-wide p7, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    .line 177
    iput-wide p9, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    .line 178
    iput-wide p11, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    .line 180
    invoke-static {p13}, Landroid/telephony/data/NrQosSessionAttributes;->copySocketAddresses(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "remoteAddressesTemp":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    .line 182
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v1, "remoteAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    if-ge v2, v0, :cond_6b

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 208
    .local v3, "addressBytes":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 210
    .local v4, "port":I
    :try_start_41
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 211
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 210
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/net/UnknownHostException; {:try_start_41 .. :try_end_4d} :catch_4e

    .line 215
    goto :goto_68

    .line 212
    :catch_4e
    move-exception v5

    .line 214
    .local v5, "e":Ljava/net/UnknownHostException;
    sget-object v6, Landroid/telephony/data/NrQosSessionAttributes;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to unparcel remote address at index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v3    # "addressBytes":[B
    .end local v4    # "port":I
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :goto_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 217
    .end local v2    # "i":I
    :cond_6b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    .line 218
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/NrQosSessionAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/NrQosSessionAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist copySocketAddresses(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 186
    .local p0, "remoteAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "remoteAddressesTemp":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 188
    .local v2, "socketAddress":Ljava/net/InetSocketAddress;
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v2    # "socketAddress":Ljava/net/InetSocketAddress;
    :cond_20
    goto :goto_9

    .line 192
    :cond_21
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 246
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 247
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_64

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_64

    .line 248
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/NrQosSessionAttributes;

    .line 249
    .local v2, "nrQosAttr":Landroid/telephony/data/NrQosSessionAttributes;
    iget v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    iget v4, v2, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    if-ne v3, v4, :cond_62

    iget v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    iget v4, v2, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    if-ne v3, v4, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-object v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    .line 256
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_62

    iget-object v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    .line 257
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_63

    :cond_62
    move v0, v1

    .line 249
    :goto_63
    return v0

    .line 247
    .end local v2    # "nrQosAttr":Landroid/telephony/data/NrQosSessionAttributes;
    :cond_64
    :goto_64
    return v1
.end method

.method public whitelist getBitRateWindowDuration()Ljava/time/Duration;
    .registers 3

    .line 136
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGuaranteedDownlinkBitRateKbps()J
    .registers 3

    .line 97
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    return-wide v0
.end method

.method public whitelist getGuaranteedUplinkBitRateKbps()J
    .registers 3

    .line 84
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    return-wide v0
.end method

.method public whitelist getMaxDownlinkBitRateKbps()J
    .registers 3

    .line 123
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    return-wide v0
.end method

.method public whitelist getMaxUplinkBitRateKbps()J
    .registers 3

    .line 110
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    return-wide v0
.end method

.method public whitelist getQosFlowIdentifier()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    return v0
.end method

.method public whitelist getQosIdentifier()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    return v0
.end method

.method public whitelist getRemoteAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 262
    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    .line 263
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    .line 264
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 262
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 227
    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-object v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 236
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, v0, :cond_4c

    .line 238
    iget-object v2, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 239
    .local v2, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 240
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    .end local v2    # "address":Ljava/net/InetSocketAddress;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 242
    .end local v1    # "i":I
    :cond_4c
    return-void
.end method
