.class public Landroid/hardware/location/ContextHubInfo;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mMaxPacketLengthBytes:I

.field private mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

.field private mName:Ljava/lang/String;

.field private mPeakMips:F

.field private mPeakPowerDrawMw:F

.field private mPlatformVersion:I

.field private mSleepPowerDrawMw:F

.field private mStaticSwVersion:I

.field private mStoppedPowerDrawMw:F

.field private mSupportedSensors:[I

.field private mToolchain:Ljava/lang/String;

.field private mToolchainVersion:I

.field private mVendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 411
    new-instance v0, Landroid/hardware/location/ContextHubInfo$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/location/ContextHubInfo$1;-><init>()V

    #@5
    .line 410
    sput-object v0, Landroid/hardware/location/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    #@9
    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    #@f
    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    #@15
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    #@1b
    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    #@21
    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v1

    #@25
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    #@27
    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    #@2d
    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@30
    move-result v1

    #@31
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    #@33
    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@36
    move-result v1

    #@37
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    #@39
    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3c
    move-result v1

    #@3d
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    #@3f
    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@42
    move-result v1

    #@43
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    #@45
    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v1

    #@49
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    #@4b
    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v0

    #@4f
    .line 382
    .local v0, "numSupportedSensors":I
    new-array v1, v0, [I

    #@51
    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    #@53
    .line 383
    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    #@55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    #@58
    .line 384
    sget-object v1, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, [Landroid/hardware/location/MemoryRegion;

    #@60
    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    #@62
    .line 367
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 388
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    #@2
    return v0
.end method

.method public getMaxPacketLengthBytes()I
    .locals 1

    #@0
    .prologue
    .line 56
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    #@2
    return v0
.end method

.method public getMemoryRegions()[Landroid/hardware/location/MemoryRegion;
    .locals 2

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    #@2
    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Landroid/hardware/location/MemoryRegion;

    #@b
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPeakMips()F
    .locals 1

    #@0
    .prologue
    .line 216
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    #@2
    return v0
.end method

.method public getPeakPowerDrawMw()F
    .locals 1

    #@0
    .prologue
    .line 287
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    #@2
    return v0
.end method

.method public getPlatformVersion()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    #@2
    return v0
.end method

.method public getSleepPowerDrawMw()F
    .locals 1

    #@0
    .prologue
    .line 266
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    #@2
    return v0
.end method

.method public getStaticSwVersion()I
    .locals 1

    #@0
    .prologue
    .line 176
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    #@2
    return v0
.end method

.method public getStoppedPowerDrawMw()F
    .locals 1

    #@0
    .prologue
    .line 240
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    #@2
    return v0
.end method

.method public getSupportedSensors()[I
    .locals 2

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    #@2
    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getToolchain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getToolchainVersion()I
    .locals 1

    #@0
    .prologue
    .line 196
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    #@2
    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 87
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    #@2
    .line 86
    return-void
.end method

.method public setMaxPacketLenBytes(I)V
    .locals 0
    .param p1, "bytes"    # I

    #@0
    .prologue
    .line 67
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    #@2
    .line 66
    return-void
.end method

.method public setMemoryRegions([Landroid/hardware/location/MemoryRegion;)V
    .locals 1
    .param p1, "memoryRegions"    # [Landroid/hardware/location/MemoryRegion;

    #@0
    .prologue
    .line 345
    array-length v0, p1

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Landroid/hardware/location/MemoryRegion;

    #@7
    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    #@9
    .line 344
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    iput-object p1, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    #@2
    .line 106
    return-void
.end method

.method public setPeakMips(F)V
    .locals 0
    .param p1, "peakMips"    # F

    #@0
    .prologue
    .line 227
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    #@2
    .line 226
    return-void
.end method

.method public setPeakPowerDrawMw(F)V
    .locals 0
    .param p1, "peakPowerDrawMw"    # F

    #@0
    .prologue
    .line 299
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    #@2
    .line 298
    return-void
.end method

.method public setPlatformVersion(I)V
    .locals 0
    .param p1, "platformVersion"    # I

    #@0
    .prologue
    .line 167
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    #@2
    .line 166
    return-void
.end method

.method public setSleepPowerDrawMw(F)V
    .locals 0
    .param p1, "sleepPowerDrawMw"    # F

    #@0
    .prologue
    .line 277
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    #@2
    .line 276
    return-void
.end method

.method public setStaticSwVersion(I)V
    .locals 0
    .param p1, "staticSwVersion"    # I

    #@0
    .prologue
    .line 187
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    #@2
    .line 186
    return-void
.end method

.method public setStoppedPowerDrawMw(F)V
    .locals 0
    .param p1, "stoppedPowerDrawMw"    # F

    #@0
    .prologue
    .line 251
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    #@2
    .line 250
    return-void
.end method

.method public setSupportedSensors([I)V
    .locals 1
    .param p1, "supportedSensors"    # [I

    #@0
    .prologue
    .line 332
    array-length v0, p1

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    #@7
    .line 331
    return-void
.end method

.method public setToolchain(Ljava/lang/String;)V
    .locals 0
    .param p1, "toolchain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    #@2
    .line 146
    return-void
.end method

.method public setToolchainVersion(I)V
    .locals 0
    .param p1, "toolchainVersion"    # I

    #@0
    .prologue
    .line 207
    iput p1, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    #@2
    .line 206
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    iput-object p1, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    #@2
    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 350
    const-string/jumbo v0, ""

    #@3
    .line 351
    .local v0, "retVal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "Id : "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, ", Name : "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, "\n\tVendor : "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    const-string/jumbo v2, ", ToolChain : "

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    const-string/jumbo v2, "\n\tPlatformVersion : "

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    const-string/jumbo v2, ", StaticSwVersion : "

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    const-string/jumbo v2, "\n\tPeakMips : "

    #@ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    #@b1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v1

    #@c2
    const-string/jumbo v2, ", StoppedPowerDraw : "

    #@c5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v1

    #@c9
    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    #@cb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v1

    #@cf
    const-string/jumbo v2, " mW"

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v0

    #@da
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    const-string/jumbo v2, ", PeakPowerDraw : "

    #@e6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    #@ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v1

    #@f0
    const-string/jumbo v2, " mW"

    #@f3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v1

    #@f7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v0

    #@fb
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v1

    #@104
    const-string/jumbo v2, ", MaxPacketLength : "

    #@107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    const-string/jumbo v2, " Bytes"

    #@114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v1

    #@118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v0

    #@11c
    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v1

    #@125
    const-string/jumbo v2, "\n\tSupported sensors : "

    #@128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v1

    #@12c
    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    #@12e
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@131
    move-result-object v2

    #@132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v1

    #@136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v0

    #@13a
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    #@13c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    const-string/jumbo v2, "\n\tMemory Regions : "

    #@146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v1

    #@14a
    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    #@14c
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@14f
    move-result-object v2

    #@150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v1

    #@154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v0

    #@158
    .line 364
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 392
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 393
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 394
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 395
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 396
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 397
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 398
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStaticSwVersion:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 399
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@28
    .line 400
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@2d
    .line 401
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@32
    .line 402
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@37
    .line 403
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 405
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    #@3e
    array-length v0, v0

    #@3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 406
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    #@44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@47
    .line 407
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    #@49
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@4c
    .line 391
    return-void
.end method
