.class public final Landroid/net/nsd/AdvertisingRequest$Builder;
.super Ljava/lang/Object;
.source "AdvertisingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/AdvertisingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdvertisingConfig:J

.field private blacklist mProtocolType:I

.field private final blacklist mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

.field private blacklist mTtl:Ljava/time/Duration;


# direct methods
.method public constructor whitelist <init>(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/nsd/AdvertisingRequest$Builder;-><init>(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 219
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "protocolType"    # I

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    .line 210
    iput p2, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mProtocolType:I

    .line 211
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/nsd/AdvertisingRequest;
    .registers 8

    .line 281
    new-instance v0, Landroid/net/nsd/AdvertisingRequest;

    iget-object v1, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mServiceInfo:Landroid/net/nsd/NsdServiceInfo;

    iget v2, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mProtocolType:I

    iget-wide v3, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mAdvertisingConfig:J

    iget-object v5, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mTtl:Ljava/time/Duration;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/nsd/AdvertisingRequest;-><init>(Landroid/net/nsd/NsdServiceInfo;IJLjava/time/Duration;Landroid/net/nsd/AdvertisingRequest-IA;)V

    return-object v0
.end method

.method public whitelist setFlags(J)Landroid/net/nsd/AdvertisingRequest$Builder;
    .registers 3
    .param p1, "flags"    # J

    .line 228
    iput-wide p1, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mAdvertisingConfig:J

    .line 229
    return-object p0
.end method

.method public whitelist setProtocolType(I)Landroid/net/nsd/AdvertisingRequest$Builder;
    .registers 2
    .param p1, "protocolType"    # I

    .line 274
    iput p1, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mProtocolType:I

    .line 275
    return-object p0
.end method

.method public blacklist setTtl(Ljava/time/Duration;)Landroid/net/nsd/AdvertisingRequest$Builder;
    .registers 7
    .param p1, "ttl"    # Ljava/time/Duration;

    .line 254
    if-nez p1, :cond_6

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mTtl:Ljava/time/Duration;

    .line 256
    return-object p0

    .line 258
    :cond_6
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 259
    .local v0, "ttlSeconds":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_20

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-gtz v2, :cond_20

    .line 264
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    iput-object v2, p0, Landroid/net/nsd/AdvertisingRequest$Builder;->mTtl:Ljava/time/Duration;

    .line 265
    return-object p0

    .line 260
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ttlSeconds exceeds the allowed range (value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allowedRanged = [0, 0xffffffffL])"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
