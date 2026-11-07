.class public final Landroid/net/wifi/usd/PublishConfig$Builder;
.super Ljava/lang/Object;
.source "PublishConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/usd/PublishConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAnnouncementPeriodMillis:I

.field private blacklist mEnableEvents:Z

.field private blacklist mOperatingFrequencies:[I

.field private blacklist mRxMatchFilterTlv:[B

.field private final blacklist mServiceName:[B

.field private blacklist mServiceProtoType:I

.field private blacklist mServiceSpecificInfo:[B

.field private blacklist mSolicitedTransmissionType:I

.field private blacklist mTtlSeconds:I

.field private blacklist mTxMatchFilterTlv:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnnouncementPeriodMillis(Landroid/net/wifi/usd/PublishConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mAnnouncementPeriodMillis:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableEvents(Landroid/net/wifi/usd/PublishConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mEnableEvents:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOperatingFrequencies(Landroid/net/wifi/usd/PublishConfig$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mOperatingFrequencies:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRxMatchFilterTlv(Landroid/net/wifi/usd/PublishConfig$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mRxMatchFilterTlv:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceName(Landroid/net/wifi/usd/PublishConfig$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mServiceName:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceProtoType(Landroid/net/wifi/usd/PublishConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mServiceProtoType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceSpecificInfo(Landroid/net/wifi/usd/PublishConfig$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mServiceSpecificInfo:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSolicitedTransmissionType(Landroid/net/wifi/usd/PublishConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mSolicitedTransmissionType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTtlSeconds(Landroid/net/wifi/usd/PublishConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mTtlSeconds:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTxMatchFilterTlv(Landroid/net/wifi/usd/PublishConfig$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mTxMatchFilterTlv:[B

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mSolicitedTransmissionType:I

    .line 152
    const/16 v1, 0x64

    iput v1, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mAnnouncementPeriodMillis:I

    .line 153
    iput-boolean v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mEnableEvents:Z

    .line 155
    const/16 v1, 0xbb8

    iput v1, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mTtlSeconds:I

    .line 156
    iput v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mServiceProtoType:I

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mTxMatchFilterTlv:[B

    .line 159
    iput-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mRxMatchFilterTlv:[B

    .line 160
    iput-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mServiceSpecificInfo:[B

    .line 161
    iput-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mOperatingFrequencies:[I

    .line 175
    const-string v0, "serviceName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mServiceName:[B

    .line 177
    iget-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mServiceName:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validateServiceName([B)V

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/usd/PublishConfig;
    .registers 3

    .line 382
    new-instance v0, Landroid/net/wifi/usd/PublishConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/usd/PublishConfig;-><init>(Landroid/net/wifi/usd/PublishConfig$Builder;Landroid/net/wifi/usd/PublishConfig-IA;)V

    return-object v0
.end method

.method public whitelist setAnnouncementPeriodMillis(I)Landroid/net/wifi/usd/PublishConfig$Builder;
    .registers 4
    .param p1, "announcementPeriodMillis"    # I

    .line 299
    if-ltz p1, :cond_5

    .line 303
    iput p1, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mAnnouncementPeriodMillis:I

    .line 304
    return-object p0

    .line 300
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid announcementPeriodMillis - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEventsEnabled(Z)Landroid/net/wifi/usd/PublishConfig$Builder;
    .registers 2
    .param p1, "enableEvents"    # Z

    .line 318
    iput-boolean p1, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mEnableEvents:Z

    .line 319
    return-object p0
.end method

.method public whitelist setOperatingFrequenciesMhz([I)Landroid/net/wifi/usd/PublishConfig$Builder;
    .registers 4
    .param p1, "operatingFrequencies"    # [I

    .line 365
    const-string v0, "operatingFrequencies must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    array-length v0, p1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_19

    .line 367
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->validateChannelFrequencyInMhz([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 370
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mOperatingFrequencies:[I

    .line 371
    return-object p0

    .line 368
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid operatingFrequencies"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRxMatchFilter(Ljava/util/List;)Landroid/net/wifi/usd/PublishConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/usd/PublishConfig$Builder;"
        }
    .end annotation

    .line 256
    .local p1, "rxMatchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "rxMatchFilter must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mRxMatchFilterTlv:[B

    .line 259
    iget-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mRxMatchFilterTlv:[B

    invoke-static {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 264
    return-object p0

    .line 260
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rxMatchFilter configuration - LV fields do not match up to length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceProtoType(I)Landroid/net/wifi/usd/PublishConfig$Builder;
    .registers 5
    .param p1, "serviceProtoType"    # I

    .line 207
    if-ltz p1, :cond_8

    const/4 v0, 0x1

    if-gt p1, v0, :cond_8

    .line 212
    iput p1, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mServiceProtoType:I

    .line 213
    return-object p0

    .line 209
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

.method public whitelist setServiceSpecificInfo([B)Landroid/net/wifi/usd/PublishConfig$Builder;
    .registers 3
    .param p1, "serviceSpecificInfo"    # [B

    .line 337
    const-string v0, "serviceSpecificInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mServiceSpecificInfo:[B

    .line 339
    return-object p0
.end method

.method public whitelist setSolicitedTransmissionType(I)Landroid/net/wifi/usd/PublishConfig$Builder;
    .registers 5
    .param p1, "solicitedTransmissionType"    # I

    .line 279
    if-ltz p1, :cond_8

    const/4 v0, 0x1

    if-gt p1, v0, :cond_8

    .line 284
    iput p1, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mSolicitedTransmissionType:I

    .line 285
    return-object p0

    .line 281
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid solicitedTransmissionType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTtlSeconds(I)Landroid/net/wifi/usd/PublishConfig$Builder;
    .registers 4
    .param p1, "ttlSeconds"    # I

    .line 190
    if-ltz p1, :cond_5

    .line 193
    iput p1, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mTtlSeconds:I

    .line 194
    return-object p0

    .line 191
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTxMatchFilter(Ljava/util/List;)Landroid/net/wifi/usd/PublishConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/usd/PublishConfig$Builder;"
        }
    .end annotation

    .line 229
    .local p1, "txMatchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "txMatchFilter must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mTxMatchFilterTlv:[B

    .line 232
    iget-object v0, p0, Landroid/net/wifi/usd/PublishConfig$Builder;->mTxMatchFilterTlv:[B

    invoke-static {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 237
    return-object p0

    .line 233
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid txMatchFilter configuration - LV fields do not match up to length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
