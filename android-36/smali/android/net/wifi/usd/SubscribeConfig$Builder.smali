.class public final Landroid/net/wifi/usd/SubscribeConfig$Builder;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/usd/SubscribeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mOperatingFrequencies:[I

.field private blacklist mQueryPeriodMillis:I

.field private blacklist mRecommendedFrequencies:[I

.field private blacklist mRxMatchFilterTlv:[B

.field private final blacklist mServiceName:[B

.field private blacklist mServiceProtoType:I

.field private blacklist mServiceSpecificInfo:[B

.field private blacklist mSubscribeType:I

.field private blacklist mTtlSeconds:I

.field private blacklist mTxMatchFilterTlv:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOperatingFrequencies(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mOperatingFrequencies:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueryPeriodMillis(Landroid/net/wifi/usd/SubscribeConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mQueryPeriodMillis:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecommendedFrequencies(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mRecommendedFrequencies:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRxMatchFilterTlv(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mRxMatchFilterTlv:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceName(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mServiceName:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceProtoType(Landroid/net/wifi/usd/SubscribeConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mServiceProtoType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceSpecificInfo(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscribeType(Landroid/net/wifi/usd/SubscribeConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mSubscribeType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTtlSeconds(Landroid/net/wifi/usd/SubscribeConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mTtlSeconds:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTxMatchFilterTlv(Landroid/net/wifi/usd/SubscribeConfig$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mTxMatchFilterTlv:[B

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mSubscribeType:I

    .line 163
    const/16 v0, 0x64

    iput v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mQueryPeriodMillis:I

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mRecommendedFrequencies:[I

    .line 166
    const/16 v1, 0xbb8

    iput v1, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mTtlSeconds:I

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mServiceProtoType:I

    .line 168
    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mTxMatchFilterTlv:[B

    .line 169
    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mRxMatchFilterTlv:[B

    .line 170
    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    .line 171
    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mOperatingFrequencies:[I

    .line 185
    const-string v0, "serviceName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mServiceName:[B

    .line 187
    iget-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mServiceName:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validateServiceName([B)V

    .line 188
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/usd/SubscribeConfig;
    .registers 3

    .line 405
    new-instance v0, Landroid/net/wifi/usd/SubscribeConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/usd/SubscribeConfig;-><init>(Landroid/net/wifi/usd/SubscribeConfig$Builder;Landroid/net/wifi/usd/SubscribeConfig-IA;)V

    return-object v0
.end method

.method public whitelist setOperatingFrequenciesMhz([I)Landroid/net/wifi/usd/SubscribeConfig$Builder;
    .registers 4
    .param p1, "operatingFrequencies"    # [I

    .line 388
    const-string v0, "operatingFrequencies must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 389
    array-length v0, p1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_19

    .line 390
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->validateChannelFrequencyInMhz([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 393
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mOperatingFrequencies:[I

    .line 394
    return-object p0

    .line 391
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid operatingFrequencies"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setQueryPeriodMillis(I)Landroid/net/wifi/usd/SubscribeConfig$Builder;
    .registers 4
    .param p1, "queryPeriodMillis"    # I

    .line 301
    if-ltz p1, :cond_5

    .line 305
    iput p1, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mQueryPeriodMillis:I

    .line 306
    return-object p0

    .line 302
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid queryPeriodMillis - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRecommendedOperatingFrequenciesMhz([I)Landroid/net/wifi/usd/SubscribeConfig$Builder;
    .registers 4
    .param p1, "recommendedFrequencies"    # [I

    .line 334
    const-string v0, "recommendedFrequencies must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    array-length v0, p1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_19

    .line 337
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->validateChannelFrequencyInMhz([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 341
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mRecommendedFrequencies:[I

    .line 342
    return-object p0

    .line 339
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid recommendedFrequencies"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRxMatchFilter(Ljava/util/List;)Landroid/net/wifi/usd/SubscribeConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/usd/SubscribeConfig$Builder;"
        }
    .end annotation

    .line 266
    .local p1, "rxMatchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "rxMatchFilter must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mRxMatchFilterTlv:[B

    .line 269
    iget-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mRxMatchFilterTlv:[B

    invoke-static {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 274
    return-object p0

    .line 270
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rxMatchFilter configuration - LV fields do not match up to length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceProtoType(I)Landroid/net/wifi/usd/SubscribeConfig$Builder;
    .registers 5
    .param p1, "serviceProtoType"    # I

    .line 217
    if-ltz p1, :cond_8

    const/4 v0, 0x1

    if-gt p1, v0, :cond_8

    .line 222
    iput p1, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mServiceProtoType:I

    .line 223
    return-object p0

    .line 219
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid serviceProtoType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceSpecificInfo([B)Landroid/net/wifi/usd/SubscribeConfig$Builder;
    .registers 3
    .param p1, "serviceSpecificInfo"    # [B

    .line 360
    const-string v0, "serviceSpecificInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    .line 362
    return-object p0
.end method

.method public whitelist setSubscribeType(I)Landroid/net/wifi/usd/SubscribeConfig$Builder;
    .registers 5
    .param p1, "subscribeType"    # I

    .line 285
    if-ltz p1, :cond_8

    const/4 v0, 0x1

    if-gt p1, v0, :cond_8

    .line 288
    iput p1, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mSubscribeType:I

    .line 289
    return-object p0

    .line 286
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscribeType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTtlSeconds(I)Landroid/net/wifi/usd/SubscribeConfig$Builder;
    .registers 4
    .param p1, "ttlSeconds"    # I

    .line 200
    if-ltz p1, :cond_5

    .line 203
    iput p1, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mTtlSeconds:I

    .line 204
    return-object p0

    .line 201
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTxMatchFilter(Ljava/util/List;)Landroid/net/wifi/usd/SubscribeConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/usd/SubscribeConfig$Builder;"
        }
    .end annotation

    .line 239
    .local p1, "txMatchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "txMatchFilter must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mTxMatchFilterTlv:[B

    .line 242
    iget-object v0, p0, Landroid/net/wifi/usd/SubscribeConfig$Builder;->mTxMatchFilterTlv:[B

    invoke-static {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 247
    return-object p0

    .line 243
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid txMatchFilter configuration - LV fields do not match up to length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
