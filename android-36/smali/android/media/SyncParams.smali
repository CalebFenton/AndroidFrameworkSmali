.class public final Landroid/media/SyncParams;
.super Ljava/lang/Object;
.source "SyncParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SyncParams$AudioAdjustMode;,
        Landroid/media/SyncParams$SyncSource;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_ADJUST_MODE_DEFAULT:I = 0x0

.field public static final whitelist AUDIO_ADJUST_MODE_RESAMPLE:I = 0x2

.field public static final whitelist AUDIO_ADJUST_MODE_STRETCH:I = 0x1

.field private static final greylist-max-o SET_AUDIO_ADJUST_MODE:I = 0x2

.field private static final greylist-max-o SET_FRAME_RATE:I = 0x8

.field private static final greylist-max-o SET_SYNC_SOURCE:I = 0x1

.field private static final greylist-max-o SET_TOLERANCE:I = 0x4

.field public static final whitelist SYNC_SOURCE_AUDIO:I = 0x2

.field public static final whitelist SYNC_SOURCE_DEFAULT:I = 0x0

.field public static final whitelist SYNC_SOURCE_SYSTEM_CLOCK:I = 0x1

.field public static final whitelist SYNC_SOURCE_VSYNC:I = 0x3


# instance fields
.field private greylist-max-o mAudioAdjustMode:I

.field private greylist-max-o mFrameRate:F

.field private greylist-max-o mSet:I

.field private greylist-max-o mSyncSource:I

.field private greylist-max-o mTolerance:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 160
    iput v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    .line 161
    iput v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/SyncParams;->mTolerance:F

    .line 163
    iput v0, p0, Landroid/media/SyncParams;->mFrameRate:F

    return-void
.end method


# virtual methods
.method public whitelist allowDefaults()Landroid/media/SyncParams;
    .registers 2

    .line 173
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x7

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 174
    return-object p0
.end method

.method public whitelist getAudioAdjustMode()I
    .registers 3

    .line 194
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 197
    iget v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    return v0

    .line 195
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio adjust mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFrameRate()F
    .registers 3

    .line 276
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    .line 279
    iget v0, p0, Landroid/media/SyncParams;->mFrameRate:F

    return v0

    .line 277
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frame rate not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSyncSource()I
    .registers 3

    .line 217
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 220
    iget v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    return v0

    .line 218
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sync source not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTolerance()F
    .registers 3

    .line 248
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    .line 251
    iget v0, p0, Landroid/media/SyncParams;->mTolerance:F

    return v0

    .line 249
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tolerance not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioAdjustMode(I)Landroid/media/SyncParams;
    .registers 3
    .param p1, "audioAdjustMode"    # I

    .line 183
    iput p1, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    .line 184
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 185
    return-object p0
.end method

.method public whitelist setFrameRate(F)Landroid/media/SyncParams;
    .registers 3
    .param p1, "frameRate"    # F

    .line 262
    iput p1, p0, Landroid/media/SyncParams;->mFrameRate:F

    .line 263
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 264
    return-object p0
.end method

.method public whitelist setSyncSource(I)Landroid/media/SyncParams;
    .registers 3
    .param p1, "syncSource"    # I

    .line 206
    iput p1, p0, Landroid/media/SyncParams;->mSyncSource:I

    .line 207
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 208
    return-object p0
.end method

.method public whitelist setTolerance(F)Landroid/media/SyncParams;
    .registers 4
    .param p1, "tolerance"    # F

    .line 232
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_14

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_14

    .line 235
    iput p1, p0, Landroid/media/SyncParams;->mTolerance:F

    .line 236
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 237
    return-object p0

    .line 233
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tolerance must be less than one and non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
