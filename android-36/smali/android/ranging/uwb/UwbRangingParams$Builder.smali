.class public final Landroid/ranging/uwb/UwbRangingParams$Builder;
.super Ljava/lang/Object;
.source "UwbRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/uwb/UwbRangingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

.field private blacklist mConfigId:I

.field private blacklist mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

.field private blacklist mPeerAddress:Landroid/ranging/uwb/UwbAddress;

.field private blacklist mRangingUpdateRate:I

.field private blacklist mSessionId:I

.field private blacklist mSessionKeyInfo:[B

.field private blacklist mSlotDuration:I

.field private blacklist mSubSessionId:I

.field private blacklist mSubSessionKeyInfo:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmComplexChannel(Landroid/ranging/uwb/UwbRangingParams$Builder;)Landroid/ranging/uwb/UwbComplexChannel;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigId(Landroid/ranging/uwb/UwbRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mConfigId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceAddress(Landroid/ranging/uwb/UwbRangingParams$Builder;)Landroid/ranging/uwb/UwbAddress;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeerAddress(Landroid/ranging/uwb/UwbRangingParams$Builder;)Landroid/ranging/uwb/UwbAddress;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingUpdateRate(Landroid/ranging/uwb/UwbRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mRangingUpdateRate:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Landroid/ranging/uwb/UwbRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionKeyInfo(Landroid/ranging/uwb/UwbRangingParams$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSessionKeyInfo:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotDuration(Landroid/ranging/uwb/UwbRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSlotDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubSessionId(Landroid/ranging/uwb/UwbRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSubSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubSessionKeyInfo(Landroid/ranging/uwb/UwbRangingParams$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSubSessionKeyInfo:[B

    return-object p0
.end method

.method public constructor whitelist <init>(IILandroid/ranging/uwb/UwbAddress;Landroid/ranging/uwb/UwbAddress;)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "configId"    # I
    .param p3, "deviceAddress"    # Landroid/ranging/uwb/UwbAddress;
    .param p4, "peerAddress"    # Landroid/ranging/uwb/UwbAddress;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSubSessionId:I

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    .line 298
    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSessionKeyInfo:[B

    .line 299
    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSubSessionKeyInfo:[B

    .line 300
    new-instance v1, Landroid/ranging/uwb/UwbComplexChannel$Builder;

    invoke-direct {v1}, Landroid/ranging/uwb/UwbComplexChannel$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/ranging/uwb/UwbComplexChannel$Builder;->build()Landroid/ranging/uwb/UwbComplexChannel;

    move-result-object v1

    iput-object v1, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    .line 301
    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    .line 302
    const/4 v0, 0x1

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mRangingUpdateRate:I

    .line 304
    const/4 v0, 0x2

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSlotDuration:I

    .line 321
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iput p1, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSessionId:I

    .line 324
    iput p2, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mConfigId:I

    .line 325
    iput-object p3, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    .line 326
    iput-object p4, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    .line 327
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/uwb/UwbRangingParams;
    .registers 3

    .line 421
    new-instance v0, Landroid/ranging/uwb/UwbRangingParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/uwb/UwbRangingParams;-><init>(Landroid/ranging/uwb/UwbRangingParams$Builder;Landroid/ranging/uwb/UwbRangingParams-IA;)V

    return-object v0
.end method

.method public whitelist setComplexChannel(Landroid/ranging/uwb/UwbComplexChannel;)Landroid/ranging/uwb/UwbRangingParams$Builder;
    .registers 2
    .param p1, "complexChannel"    # Landroid/ranging/uwb/UwbComplexChannel;

    .line 381
    iput-object p1, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    .line 382
    return-object p0
.end method

.method public whitelist setRangingUpdateRate(I)Landroid/ranging/uwb/UwbRangingParams$Builder;
    .registers 2
    .param p1, "rate"    # I

    .line 395
    iput p1, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mRangingUpdateRate:I

    .line 396
    return-object p0
.end method

.method public whitelist setSessionKeyInfo([B)Landroid/ranging/uwb/UwbRangingParams$Builder;
    .registers 3
    .param p1, "sessionKeyInfo"    # [B

    .line 351
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSessionKeyInfo:[B

    .line 353
    return-object p0
.end method

.method public whitelist setSlotDuration(I)Landroid/ranging/uwb/UwbRangingParams$Builder;
    .registers 2
    .param p1, "durationMs"    # I

    .line 409
    iput p1, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSlotDuration:I

    .line 410
    return-object p0
.end method

.method public whitelist setSubSessionId(I)Landroid/ranging/uwb/UwbRangingParams$Builder;
    .registers 2
    .param p1, "subSessionId"    # I

    .line 338
    iput p1, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSubSessionId:I

    .line 339
    return-object p0
.end method

.method public whitelist setSubSessionKeyInfo([B)Landroid/ranging/uwb/UwbRangingParams$Builder;
    .registers 3
    .param p1, "subSessionKeyInfo"    # [B

    .line 365
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams$Builder;->mSubSessionKeyInfo:[B

    .line 367
    return-object p0
.end method
