.class public final Lcom/android/graphics/libgui/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/graphics/libgui/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist allocateBufferPriority()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist applyPictureProfiles()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist bqAlwaysUseMaxDequeuedBufferCount()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist bqConsumerAttachCallback()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist bqExtendedallocate()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist bqGlFenceCleanup()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist bqProducerThrottlesOnlyAsyncMode()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist bqSetframerate()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist bufferReleaseChannel()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist frametimestampsPreviousrelease()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist traceFrameRateOverride()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist wbCamera3AndProcessors()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist wbConsumerBaseOwnsBq()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist wbLibcameraservice()Z
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public greylist wbMediaMigration()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist wbPlatformApiImprovements()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist wbRingBuffer()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public greylist wbStreamSplitter()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public greylist wbUnlimitedSlots()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method
