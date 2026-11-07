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
.field private greylist-max-o mAudioChannelCount:I

.field private blacklist mAudioDescription:Z

.field private greylist-max-o mAudioSampleRate:I

.field private greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private blacklist mEncoding:Ljava/lang/String;

.field private blacklist mEncrypted:Z

.field private greylist-max-o mExtra:Landroid/os/Bundle;

.field private blacklist mHardOfHearing:Z

.field private final greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mLanguage:Ljava/lang/String;

.field private blacklist mSpokenSubtitle:Z

.field private final greylist-max-o mType:I

.field private greylist-max-o mVideoActiveFormatDescription:B

.field private greylist-max-o mVideoFrameRate:F

.field private greylist-max-o mVideoHeight:I

.field private greylist-max-o mVideoPixelAspectRatio:F

.field private greylist-max-o mVideoWidth:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    .line 485
    if-eqz p1, :cond_29

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    goto :goto_29

    .line 488
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_29
    :goto_29
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    .line 492
    iput-object p2, p0, Landroid/media/tv/TvTrackInfo$Builder;->mId:Ljava/lang/String;

    .line 493
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/TvTrackInfo;
    .registers 22

    .line 750
    move-object/from16 v0, p0

    new-instance v1, Landroid/media/tv/TvTrackInfo;

    iget v2, v0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    iget-object v3, v0, Landroid/media/tv/TvTrackInfo$Builder;->mId:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/tv/TvTrackInfo$Builder;->mLanguage:Ljava/lang/String;

    iget-object v5, v0, Landroid/media/tv/TvTrackInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/media/tv/TvTrackInfo$Builder;->mEncoding:Ljava/lang/String;

    iget-boolean v7, v0, Landroid/media/tv/TvTrackInfo$Builder;->mEncrypted:Z

    iget v8, v0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioChannelCount:I

    iget v9, v0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioSampleRate:I

    iget-boolean v10, v0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioDescription:Z

    iget-boolean v11, v0, Landroid/media/tv/TvTrackInfo$Builder;->mHardOfHearing:Z

    iget-boolean v12, v0, Landroid/media/tv/TvTrackInfo$Builder;->mSpokenSubtitle:Z

    iget v13, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoWidth:I

    iget v14, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoHeight:I

    iget v15, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoFrameRate:F

    move-object/from16 v16, v1

    iget v1, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    move/from16 v17, v1

    iget-byte v1, v0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoActiveFormatDescription:B

    move/from16 v18, v1

    iget-object v1, v0, Landroid/media/tv/TvTrackInfo$Builder;->mExtra:Landroid/os/Bundle;

    const/16 v19, 0x0

    move/from16 v20, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v1 .. v19}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setAudioChannelCount(I)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "audioChannelCount"    # I

    .line 557
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_7

    .line 560
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioChannelCount:I

    .line 561
    return-object p0

    .line 558
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioDescription(Z)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "audioDescription"    # Z

    .line 594
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_7

    .line 597
    iput-boolean p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioDescription:Z

    .line 598
    return-object p0

    .line 595
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioSampleRate(I)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "audioSampleRate"    # I

    .line 573
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_7

    .line 576
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioSampleRate:I

    .line 577
    return-object p0

    .line 574
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 514
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 516
    return-object p0
.end method

.method public whitelist setEncoding(Ljava/lang/String;)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 531
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mEncoding:Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method public whitelist setEncrypted(Z)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 2
    .param p1, "encrypted"    # Z

    .line 545
    iput-boolean p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mEncrypted:Z

    .line 546
    return-object p0
.end method

.method public whitelist setExtra(Landroid/os/Bundle;)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 3
    .param p1, "extra"    # Landroid/os/Bundle;

    .line 738
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mExtra:Landroid/os/Bundle;

    .line 740
    return-object p0
.end method

.method public whitelist setHardOfHearing(Z)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "hardOfHearing"    # Z

    .line 615
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_12

    .line 616
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track or a subtitle track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_12
    :goto_12
    iput-boolean p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mHardOfHearing:Z

    .line 619
    return-object p0
.end method

.method public whitelist setLanguage(Ljava/lang/String;)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 2
    .param p1, "language"    # Ljava/lang/String;

    .line 502
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mLanguage:Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method public whitelist setSpokenSubtitle(Z)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "spokenSubtitle"    # Z

    .line 634
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_7

    .line 637
    iput-boolean p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mSpokenSubtitle:Z

    .line 638
    return-object p0

    .line 635
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoActiveFormatDescription(B)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "videoActiveFormatDescription"    # B

    .line 724
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 727
    iput-byte p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoActiveFormatDescription:B

    .line 728
    return-object p0

    .line 725
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoFrameRate(F)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "videoFrameRate"    # F

    .line 682
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 685
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoFrameRate:F

    .line 686
    return-object p0

    .line 683
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoHeight(I)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "videoHeight"    # I

    .line 666
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 669
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoHeight:I

    .line 670
    return-object p0

    .line 667
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoPixelAspectRatio(F)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "videoPixelAspectRatio"    # F

    .line 703
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 706
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    .line 707
    return-object p0

    .line 704
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoWidth(I)Landroid/media/tv/TvTrackInfo$Builder;
    .registers 4
    .param p1, "videoWidth"    # I

    .line 650
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 653
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoWidth:I

    .line 654
    return-object p0

    .line 651
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
