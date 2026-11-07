.class public final Landroid/net/nsd/AdvertisingRequest;
.super Ljava/lang/Object;
.source "AdvertisingRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/AdvertisingRequest$Builder;,
        Landroid/net/nsd/AdvertisingRequest$AdvertisingConfig;,
        Landroid/net/nsd/AdvertisingRequest$AdvertisingFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/nsd/AdvertisingRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_SKIP_PROBING:J = 0x2L

.field public static final blacklist NSD_ADVERTISING_UPDATE_ONLY:J = 0x1L


# instance fields
.field private final blacklist mAdvertisingConfig:J

.field private final blacklist mProtocolType:I

.field private final blacklist mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

.field private final blacklist mTtl:Ljava/time/Duration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Landroid/net/nsd/AdvertisingRequest$1;

    invoke-direct {v0}, Landroid/net/nsd/AdvertisingRequest$1;-><init>()V

    sput-object v0, Landroid/net/nsd/AdvertisingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/nsd/NsdServiceInfo;IJLjava/time/Duration;)V
    .registers 6
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "protocolType"    # I
    .param p3, "advertisingConfig"    # J
    .param p5, "ttl"    # Ljava/time/Duration;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/net/nsd/AdvertisingRequest;->mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    .line 105
    iput p2, p0, Landroid/net/nsd/AdvertisingRequest;->mProtocolType:I

    .line 106
    iput-wide p3, p0, Landroid/net/nsd/AdvertisingRequest;->mAdvertisingConfig:J

    .line 107
    iput-object p5, p0, Landroid/net/nsd/AdvertisingRequest;->mTtl:Ljava/time/Duration;

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/nsd/NsdServiceInfo;IJLjava/time/Duration;Landroid/net/nsd/AdvertisingRequest-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/net/nsd/AdvertisingRequest;-><init>(Landroid/net/nsd/NsdServiceInfo;IJLjava/time/Duration;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 159
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 160
    return v0

    .line 161
    :cond_4
    instance-of v1, p1, Landroid/net/nsd/AdvertisingRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 162
    return v2

    .line 164
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/nsd/AdvertisingRequest;

    .line 165
    .local v1, "otherRequest":Landroid/net/nsd/AdvertisingRequest;
    iget-object v3, p0, Landroid/net/nsd/AdvertisingRequest;->mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    iget-object v4, v1, Landroid/net/nsd/AdvertisingRequest;->mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/net/nsd/AdvertisingRequest;->mProtocolType:I

    iget v4, v1, Landroid/net/nsd/AdvertisingRequest;->mProtocolType:I

    if-ne v3, v4, :cond_30

    iget-wide v3, p0, Landroid/net/nsd/AdvertisingRequest;->mAdvertisingConfig:J

    iget-wide v5, v1, Landroid/net/nsd/AdvertisingRequest;->mAdvertisingConfig:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    iget-object v3, p0, Landroid/net/nsd/AdvertisingRequest;->mTtl:Ljava/time/Duration;

    iget-object v4, v1, Landroid/net/nsd/AdvertisingRequest;->mTtl:Ljava/time/Duration;

    .line 168
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    .line 165
    :goto_31
    return v0
.end method

.method public whitelist getFlags()J
    .registers 3

    .line 131
    iget-wide v0, p0, Landroid/net/nsd/AdvertisingRequest;->mAdvertisingConfig:J

    return-wide v0
.end method

.method public whitelist getProtocolType()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/net/nsd/AdvertisingRequest;->mProtocolType:I

    return v0
.end method

.method public whitelist getServiceInfo()Landroid/net/nsd/NsdServiceInfo;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/net/nsd/AdvertisingRequest;->mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method public blacklist getTtl()Ljava/time/Duration;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/net/nsd/AdvertisingRequest;->mTtl:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 174
    iget-object v0, p0, Landroid/net/nsd/AdvertisingRequest;->mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    iget v1, p0, Landroid/net/nsd/AdvertisingRequest;->mProtocolType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/nsd/AdvertisingRequest;->mAdvertisingConfig:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/net/nsd/AdvertisingRequest;->mTtl:Ljava/time/Duration;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "serviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/AdvertisingRequest;->mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string v2, ", protocolType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/nsd/AdvertisingRequest;->mProtocolType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string v2, ", advertisingConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/nsd/AdvertisingRequest;->mAdvertisingConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string v2, ", ttl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/AdvertisingRequest;->mTtl:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 184
    iget-object v0, p0, Landroid/net/nsd/AdvertisingRequest;->mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 185
    iget v0, p0, Landroid/net/nsd/AdvertisingRequest;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-wide v0, p0, Landroid/net/nsd/AdvertisingRequest;->mAdvertisingConfig:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-object v0, p0, Landroid/net/nsd/AdvertisingRequest;->mTtl:Ljava/time/Duration;

    if-nez v0, :cond_16

    const-wide/16 v0, -0x1

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Landroid/net/nsd/AdvertisingRequest;->mTtl:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    :goto_1c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    return-void
.end method
