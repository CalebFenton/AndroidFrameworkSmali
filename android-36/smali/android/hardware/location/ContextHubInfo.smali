.class public Landroid/hardware/location/ContextHubInfo;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"

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
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mChreApiMajorVersion:B

.field private greylist-max-o mChreApiMinorVersion:B

.field private greylist-max-o mChrePatchVersion:S

.field private greylist-max-o mChrePlatformId:J

.field private greylist-max-o mId:I

.field private greylist-max-o mMaxPacketLengthBytes:I

.field private greylist-max-o mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPeakMips:F

.field private greylist-max-o mPeakPowerDrawMw:F

.field private greylist-max-o mPlatformVersion:I

.field private greylist-max-o mSleepPowerDrawMw:F

.field private greylist-max-o mStoppedPowerDrawMw:F

.field private greylist-max-o mSupportedSensors:[I

.field private blacklist mSupportsReliableMessages:Z

.field private greylist-max-o mToolchain:Ljava/lang/String;

.field private greylist-max-o mToolchainVersion:I

.field private greylist-max-o mVendor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 450
    new-instance v0, Landroid/hardware/location/ContextHubInfo$1;

    invoke-direct {v0}, Landroid/hardware/location/ContextHubInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/location/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/ContextHubInfo;)V
    .registers 5
    .param p1, "contextHub"    # Landroid/hardware/contexthub/ContextHubInfo;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->id:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    .line 91
    iget-object v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    .line 95
    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    .line 96
    iget v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->peakMips:F

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    .line 98
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    .line 99
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    .line 100
    iget v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->maxSupportedMessageLengthBytes:I

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    .line 101
    iget-boolean v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->supportsReliableMessages:Z

    iput-boolean v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    .line 102
    iget-wide v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chrePlatformId:J

    iput-wide v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    .line 103
    iget-byte v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMajorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    .line 104
    iget-byte v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMinorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    .line 105
    iget-char v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chrePatchVersion:C

    int-to-short v1, v1

    iput-short v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    .line 107
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    .line 108
    new-array v0, v0, [Landroid/hardware/location/MemoryRegion;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    .line 109
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V
    .registers 5
    .param p1, "contextHub"    # Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    .line 67
    iget-object v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    .line 70
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    .line 71
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    .line 72
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    .line 73
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    .line 74
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    .line 75
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    .line 76
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    .line 78
    iget-wide v1, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    iput-wide v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    .line 79
    iget-byte v1, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    .line 80
    iget-byte v1, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    .line 81
    iget-short v1, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    iput-short v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    .line 83
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    .line 84
    new-array v0, v0, [Landroid/hardware/location/MemoryRegion;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    .line 85
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 417
    .local v0, "numSupportedSensors":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    .line 418
    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 419
    sget-object v1, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/location/MemoryRegion;

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    .line 421
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 338
    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 339
    const-wide v0, 0x10900000002L

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 340
    const-wide v0, 0x10900000003L

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 341
    const-wide v0, 0x10900000004L

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 342
    const-wide v0, 0x10500000005L

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 343
    const-wide v0, 0x10500000006L

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 344
    const-wide v0, 0x10500000007L

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 345
    const-wide v0, 0x10300000008L

    iget-wide v2, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 346
    const-wide v0, 0x10200000009L

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 347
    const-wide v0, 0x1020000000aL

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 348
    const-wide v0, 0x1020000000bL

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 349
    const-wide v0, 0x1020000000cL

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 350
    const-wide v0, 0x1050000000dL

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 351
    const-wide v0, 0x1050000000eL

    iget-boolean v2, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 353
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 357
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 358
    return v0

    .line 361
    :cond_4
    const/4 v1, 0x0

    .line 362
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/location/ContextHubInfo;

    if-eqz v2, :cond_a8

    .line 363
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    .line 364
    .local v2, "other":Landroid/hardware/location/ContextHubInfo;
    nop

    .line 365
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    if-ne v3, v4, :cond_a6

    .line 366
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 367
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getVendor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 368
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getToolchain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 369
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getToolchainVersion()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    if-ne v3, v4, :cond_a6

    .line 370
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v4

    if-ne v3, v4, :cond_a6

    .line 371
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getChrePlatformId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a6

    .line 372
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getPeakMips()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_a6

    .line 373
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getStoppedPowerDrawMw()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_a6

    .line 374
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getSleepPowerDrawMw()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_a6

    .line 375
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getPeakPowerDrawMw()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_a6

    .line 376
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getMaxPacketLengthBytes()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    if-ne v3, v4, :cond_a6

    .line 377
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->supportsReliableMessages()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    if-ne v3, v4, :cond_a6

    .line 378
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getSupportedSensors()[I

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 379
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getMemoryRegions()[Landroid/hardware/location/MemoryRegion;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    goto :goto_a7

    :cond_a6
    const/4 v0, 0x0

    :goto_a7
    move v1, v0

    .line 382
    .end local v2    # "other":Landroid/hardware/location/ContextHubInfo;
    :cond_a8
    return v1
.end method

.method public whitelist getChreApiMajorVersion()B
    .registers 2

    .line 275
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    return v0
.end method

.method public whitelist getChreApiMinorVersion()B
    .registers 2

    .line 282
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    return v0
.end method

.method public whitelist getChrePatchVersion()S
    .registers 2

    .line 289
    iget-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    return v0
.end method

.method public whitelist getChrePlatformId()J
    .registers 3

    .line 268
    iget-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    return-wide v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    return v0
.end method

.method public whitelist getMaxPacketLengthBytes()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    return v0
.end method

.method public whitelist getMemoryRegions()[Landroid/hardware/location/MemoryRegion;
    .registers 3

    .line 261
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/MemoryRegion;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPeakMips()F
    .registers 2

    .line 201
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    return v0
.end method

.method public whitelist getPeakPowerDrawMw()F
    .registers 2

    .line 239
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    return v0
.end method

.method public whitelist getPlatformVersion()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    return v0
.end method

.method public whitelist getSleepPowerDrawMw()F
    .registers 2

    .line 229
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    return v0
.end method

.method public whitelist getStaticSwVersion()I
    .registers 3

    .line 181
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    .line 182
    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-short v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    .line 183
    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    or-int/2addr v0, v1

    .line 181
    return v0
.end method

.method public whitelist getStoppedPowerDrawMw()F
    .registers 2

    .line 214
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    return v0
.end method

.method public whitelist getSupportedSensors()[I
    .registers 3

    .line 250
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getToolchain()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getToolchainVersion()I
    .registers 2

    .line 192
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    return v0
.end method

.method public whitelist getVendor()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 18

    .line 387
    move-object/from16 v0, p0

    invoke-static {}, Landroid/chre/flags/Flags;->fixApiCheck()Z

    move-result v1

    if-nez v1, :cond_d

    .line 388
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1

    .line 391
    :cond_d
    iget v1, v0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    iget-object v5, v0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    iget v1, v0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 392
    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v1, v0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v1, v0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    .line 393
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v1, v0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v1, v0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget v1, v0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-boolean v1, v0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-object v1, v0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    .line 395
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    .line 396
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 391
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist supportsReliableMessages()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "ID/handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget v1, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, ", Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, "\n\tVendor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, ", Toolchain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, ", Toolchain version: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget v1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "\n\tPlatformVersion : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget v1, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, ", SwVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-byte v2, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-short v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, ", CHRE platform ID: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-wide v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, "\n\tPeakMips : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, ", StoppedPowerDraw : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget v1, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, " mW, PeakPowerDraw : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, " mW, MaxPacketLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget v1, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, " Bytes, SupportsReliableMessages : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-boolean v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 428
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 435
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 436
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 437
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 438
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 440
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 441
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 442
    iget-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 446
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 447
    iget-boolean v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 448
    return-void
.end method
