.class public abstract Landroid/net/wifi/usd/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/usd/Config$ServiceProtoType;,
        Landroid/net/wifi/usd/Config$SubscribeType;,
        Landroid/net/wifi/usd/Config$TransmissionType;
    }
.end annotation


# static fields
.field public static final blacklist MAX_NUM_OF_OPERATING_FREQUENCIES:I = 0x20

.field public static final whitelist SERVICE_PROTO_TYPE_CSA_MATTER:I = 0x1

.field public static final whitelist SERVICE_PROTO_TYPE_GENERIC:I = 0x0

.field public static final whitelist SUBSCRIBE_TYPE_ACTIVE:I = 0x1

.field public static final whitelist SUBSCRIBE_TYPE_PASSIVE:I = 0x0

.field public static final whitelist TRANSMISSION_TYPE_MULTICAST:I = 0x1

.field public static final whitelist TRANSMISSION_TYPE_UNICAST:I


# instance fields
.field private final blacklist mOperatingFrequencies:[I

.field private final blacklist mRxMatchFilterTlv:[B

.field private final blacklist mServiceName:[B

.field private final blacklist mServiceProtoType:I

.field private final blacklist mServiceSpecificInfo:[B

.field private final blacklist mTtlSeconds:I

.field private final blacklist mTxMatchFilterTlv:[B


# direct methods
.method public constructor blacklist <init>([BII[B[B[B[I)V
    .registers 8
    .param p1, "serviceName"    # [B
    .param p2, "ttlSeconds"    # I
    .param p3, "serviceProtoType"    # I
    .param p4, "txMatchFilterTlv"    # [B
    .param p5, "rxMatchFilterTlv"    # [B
    .param p6, "serviceSpecificInfo"    # [B
    .param p7, "operatingFrequencies"    # [I

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/net/wifi/usd/Config;->mServiceName:[B

    .line 127
    iput p2, p0, Landroid/net/wifi/usd/Config;->mTtlSeconds:I

    .line 128
    iput p3, p0, Landroid/net/wifi/usd/Config;->mServiceProtoType:I

    .line 129
    iput-object p4, p0, Landroid/net/wifi/usd/Config;->mTxMatchFilterTlv:[B

    .line 130
    iput-object p5, p0, Landroid/net/wifi/usd/Config;->mRxMatchFilterTlv:[B

    .line 131
    iput-object p6, p0, Landroid/net/wifi/usd/Config;->mServiceSpecificInfo:[B

    .line 132
    iput-object p7, p0, Landroid/net/wifi/usd/Config;->mOperatingFrequencies:[I

    .line 133
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 259
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 260
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/usd/Config;

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/usd/Config;

    .line 261
    .local v1, "config":Landroid/net/wifi/usd/Config;
    iget v3, p0, Landroid/net/wifi/usd/Config;->mTtlSeconds:I

    iget v4, v1, Landroid/net/wifi/usd/Config;->mTtlSeconds:I

    if-ne v3, v4, :cond_4b

    iget v3, p0, Landroid/net/wifi/usd/Config;->mServiceProtoType:I

    iget v4, v1, Landroid/net/wifi/usd/Config;->mServiceProtoType:I

    if-ne v3, v4, :cond_4b

    iget-object v3, p0, Landroid/net/wifi/usd/Config;->mServiceName:[B

    iget-object v4, v1, Landroid/net/wifi/usd/Config;->mServiceName:[B

    .line 262
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/net/wifi/usd/Config;->mTxMatchFilterTlv:[B

    iget-object v4, v1, Landroid/net/wifi/usd/Config;->mTxMatchFilterTlv:[B

    .line 263
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/net/wifi/usd/Config;->mRxMatchFilterTlv:[B

    iget-object v4, v1, Landroid/net/wifi/usd/Config;->mRxMatchFilterTlv:[B

    .line 264
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/net/wifi/usd/Config;->mServiceSpecificInfo:[B

    iget-object v4, v1, Landroid/net/wifi/usd/Config;->mServiceSpecificInfo:[B

    .line 265
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/net/wifi/usd/Config;->mOperatingFrequencies:[I

    iget-object v4, v1, Landroid/net/wifi/usd/Config;->mOperatingFrequencies:[I

    .line 266
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v2

    .line 261
    :goto_4c
    return v0

    .line 260
    .end local v1    # "config":Landroid/net/wifi/usd/Config;
    :cond_4d
    return v2
.end method

.method public whitelist getOperatingFrequenciesMhz()[I
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/net/wifi/usd/Config;->mOperatingFrequencies:[I

    return-object v0
.end method

.method public whitelist getRxMatchFilter()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 199
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/wifi/usd/Config;->mRxMatchFilterTlv:[B

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRxMatchFilterTlv()[B
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/net/wifi/usd/Config;->mRxMatchFilterTlv:[B

    return-object v0
.end method

.method public whitelist getServiceName()[B
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/net/wifi/usd/Config;->mServiceName:[B

    return-object v0
.end method

.method public whitelist getServiceProtoType()I
    .registers 2

    .line 168
    iget v0, p0, Landroid/net/wifi/usd/Config;->mServiceProtoType:I

    return v0
.end method

.method public whitelist getServiceSpecificInfo()[B
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/net/wifi/usd/Config;->mServiceSpecificInfo:[B

    return-object v0
.end method

.method public whitelist getTtlSeconds()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/net/wifi/usd/Config;->mTtlSeconds:I

    return v0
.end method

.method public whitelist getTxMatchFilter()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 179
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/wifi/usd/Config;->mTxMatchFilterTlv:[B

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTxMatchFilterTlv()[B
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/net/wifi/usd/Config;->mTxMatchFilterTlv:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 271
    iget v0, p0, Landroid/net/wifi/usd/Config;->mTtlSeconds:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/usd/Config;->mServiceProtoType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 272
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/usd/Config;->mServiceName:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 273
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/net/wifi/usd/Config;->mTxMatchFilterTlv:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 274
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/usd/Config;->mRxMatchFilterTlv:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 275
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/net/wifi/usd/Config;->mServiceSpecificInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 276
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/usd/Config;->mOperatingFrequencies:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 277
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config{mServiceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/usd/Config;->mServiceName:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTtlSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/usd/Config;->mTtlSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceProtoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/usd/Config;->mServiceProtoType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxMatchFilterTlv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/usd/Config;->mTxMatchFilterTlv:[B

    .line 251
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxMatchFilterTlv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/usd/Config;->mRxMatchFilterTlv:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/usd/Config;->mServiceSpecificInfo:[B

    .line 252
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperatingFrequencies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/usd/Config;->mOperatingFrequencies:[I

    .line 253
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    return-object v0
.end method
