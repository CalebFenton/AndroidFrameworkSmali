.class public final Landroid/media/tv/TvTrackInfo$Builder;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvTrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioChannelCount:I

.field private mAudioSampleRate:I

.field private mDescription:Ljava/lang/CharSequence;

.field private mExtra:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private final mType:I

.field private mVideoFrameRate:F

.field private mVideoHeight:I

.field private mVideoPixelAspectRatio:F

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 240
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    #@7
    .line 252
    if-eqz p1, :cond_0

    #@9
    .line 253
    const/4 v0, 0x1

    #@a
    if-eq p1, v0, :cond_0

    #@c
    .line 254
    const/4 v0, 0x2

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Unknown type: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 257
    :cond_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 258
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    #@2e
    .line 259
    iput-object p2, p0, Landroid/media/tv/TvTrackInfo$Builder;->mId:Ljava/lang/String;

    #@30
    .line 251
    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/TvTrackInfo;
    .locals 13

    #@0
    .prologue
    .line 386
    new-instance v0, Landroid/media/tv/TvTrackInfo;

    #@2
    iget v1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    #@4
    iget-object v2, p0, Landroid/media/tv/TvTrackInfo$Builder;->mId:Ljava/lang/String;

    #@6
    iget-object v3, p0, Landroid/media/tv/TvTrackInfo$Builder;->mLanguage:Ljava/lang/String;

    #@8
    iget-object v4, p0, Landroid/media/tv/TvTrackInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    #@a
    iget v5, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioChannelCount:I

    #@c
    .line 387
    iget v6, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioSampleRate:I

    #@e
    iget v7, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoWidth:I

    #@10
    iget v8, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoHeight:I

    #@12
    iget v9, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoFrameRate:F

    #@14
    .line 388
    iget v10, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    #@16
    iget-object v11, p0, Landroid/media/tv/TvTrackInfo$Builder;->mExtra:Landroid/os/Bundle;

    #@18
    .line 386
    const/4 v12, 0x0

    #@19
    invoke-direct/range {v0 .. v12}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo;)V

    #@1c
    return-object v0
.end method

.method public final setAudioChannelCount(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "audioChannelCount"    # I

    #@0
    .prologue
    .line 288
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Not an audio track"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 291
    :cond_0
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioChannelCount:I

    #@f
    .line 292
    return-object p0
.end method

.method public final setAudioSampleRate(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "audioSampleRate"    # I

    #@0
    .prologue
    .line 302
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Not an audio track"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 305
    :cond_0
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioSampleRate:I

    #@f
    .line 306
    return-object p0
.end method

.method public final setDescription(Ljava/lang/CharSequence;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 278
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    #@2
    .line 279
    return-object p0
.end method

.method public final setExtra(Landroid/os/Bundle;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 1
    .param p1, "extra"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 376
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@5
    iput-object v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mExtra:Landroid/os/Bundle;

    #@7
    .line 377
    return-object p0
.end method

.method public final setLanguage(Ljava/lang/String;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    #@0
    .prologue
    .line 268
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mLanguage:Ljava/lang/String;

    #@2
    .line 269
    return-object p0
.end method

.method public final setVideoFrameRate(F)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoFrameRate"    # F

    #@0
    .prologue
    .line 344
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 347
    :cond_0
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoFrameRate:F

    #@10
    .line 348
    return-object p0
.end method

.method public final setVideoHeight(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoHeight"    # I

    #@0
    .prologue
    .line 330
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 333
    :cond_0
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoHeight:I

    #@10
    .line 334
    return-object p0
.end method

.method public final setVideoPixelAspectRatio(F)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoPixelAspectRatio"    # F

    #@0
    .prologue
    .line 363
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 366
    :cond_0
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    #@10
    .line 367
    return-object p0
.end method

.method public final setVideoWidth(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoWidth"    # I

    #@0
    .prologue
    .line 316
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 319
    :cond_0
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoWidth:I

    #@10
    .line 320
    return-object p0
.end method
