.class public final Landroid/media/SyncParams;
.super Ljava/lang/Object;
.source "SyncParams.java"


# static fields
.field public static final AUDIO_ADJUST_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_ADJUST_MODE_RESAMPLE:I = 0x2

.field public static final AUDIO_ADJUST_MODE_STRETCH:I = 0x1

.field private static final SET_AUDIO_ADJUST_MODE:I = 0x2

.field private static final SET_FRAME_RATE:I = 0x8

.field private static final SET_SYNC_SOURCE:I = 0x1

.field private static final SET_TOLERANCE:I = 0x4

.field public static final SYNC_SOURCE_AUDIO:I = 0x2

.field public static final SYNC_SOURCE_DEFAULT:I = 0x0

.field public static final SYNC_SOURCE_SYSTEM_CLOCK:I = 0x1

.field public static final SYNC_SOURCE_VSYNC:I = 0x3


# instance fields
.field private mAudioAdjustMode:I

.field private mFrameRate:F

.field private mSet:I

.field private mSyncSource:I

.field private mTolerance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 163
    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    #@7
    .line 166
    iput v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    #@9
    .line 167
    iput v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    #@b
    .line 168
    iput v1, p0, Landroid/media/SyncParams;->mTolerance:F

    #@d
    .line 169
    iput v1, p0, Landroid/media/SyncParams;->mFrameRate:F

    #@f
    .line 58
    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/SyncParams;
    .locals 1

    #@0
    .prologue
    .line 179
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    #@2
    or-int/lit8 v0, v0, 0x7

    #@4
    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    #@6
    .line 180
    return-object p0
.end method

.method public getAudioAdjustMode()I
    .locals 2

    #@0
    .prologue
    .line 200
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-nez v0, :cond_0

    #@6
    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "audio adjust mode not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 203
    :cond_0
    iget v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    #@11
    return v0
.end method

.method public getFrameRate()F
    .locals 2

    #@0
    .prologue
    .line 282
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    #@2
    and-int/lit8 v0, v0, 0x8

    #@4
    if-nez v0, :cond_0

    #@6
    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "frame rate not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 285
    :cond_0
    iget v0, p0, Landroid/media/SyncParams;->mFrameRate:F

    #@11
    return v0
.end method

.method public getSyncSource()I
    .locals 2

    #@0
    .prologue
    .line 223
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "sync source not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 226
    :cond_0
    iget v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    #@11
    return v0
.end method

.method public getTolerance()F
    .locals 2

    #@0
    .prologue
    .line 254
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-nez v0, :cond_0

    #@6
    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "tolerance not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 257
    :cond_0
    iget v0, p0, Landroid/media/SyncParams;->mTolerance:F

    #@11
    return v0
.end method

.method public setAudioAdjustMode(I)Landroid/media/SyncParams;
    .locals 1
    .param p1, "audioAdjustMode"    # I

    #@0
    .prologue
    .line 189
    iput p1, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    #@2
    .line 190
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    #@8
    .line 191
    return-object p0
.end method

.method public setFrameRate(F)Landroid/media/SyncParams;
    .locals 1
    .param p1, "frameRate"    # F

    #@0
    .prologue
    .line 268
    iput p1, p0, Landroid/media/SyncParams;->mFrameRate:F

    #@2
    .line 269
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    #@8
    .line 270
    return-object p0
.end method

.method public setSyncSource(I)Landroid/media/SyncParams;
    .locals 1
    .param p1, "syncSource"    # I

    #@0
    .prologue
    .line 212
    iput p1, p0, Landroid/media/SyncParams;->mSyncSource:I

    #@2
    .line 213
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    #@8
    .line 214
    return-object p0
.end method

.method public setTolerance(F)Landroid/media/SyncParams;
    .locals 2
    .param p1, "tolerance"    # F

    #@0
    .prologue
    .line 238
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-ltz v0, :cond_0

    #@5
    const/high16 v0, 0x3f800000    # 1.0f

    #@7
    cmpl-float v0, p1, v0

    #@9
    if-ltz v0, :cond_1

    #@b
    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "tolerance must be less than one and non-negative"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 241
    :cond_1
    iput p1, p0, Landroid/media/SyncParams;->mTolerance:F

    #@16
    .line 242
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    #@18
    or-int/lit8 v0, v0, 0x4

    #@1a
    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    #@1c
    .line 243
    return-object p0
.end method
