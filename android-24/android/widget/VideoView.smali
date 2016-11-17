.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/SubtitleController$Anchor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/VideoView$1;,
        Landroid/widget/VideoView$2;,
        Landroid/widget/VideoView$3;,
        Landroid/widget/VideoView$4;,
        Landroid/widget/VideoView$5;,
        Landroid/widget/VideoView$6;,
        Landroid/widget/VideoView$7;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

.field private mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static synthetic -get0(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/widget/VideoView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    #@2
    return v0
.end method

.method static synthetic -get11(Landroid/widget/VideoView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/VideoView;->mTargetState:I

    #@2
    return v0
.end method

.method static synthetic -get12(Landroid/widget/VideoView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@2
    return v0
.end method

.method static synthetic -get13(Landroid/widget/VideoView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/VideoView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/widget/VideoView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/VideoView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/widget/VideoView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    #@2
    return p1
.end method

.method static synthetic -set10(Landroid/widget/VideoView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/widget/VideoView;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/widget/VideoView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/widget/VideoView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/widget/VideoView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Landroid/widget/VideoView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    #@2
    return p1
.end method

.method static synthetic -set8(Landroid/widget/VideoView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    #@2
    return p1
.end method

.method static synthetic -set9(Landroid/widget/VideoView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/VideoView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/VideoView;Z)V
    .locals 0
    .param p1, "cleartargetstate"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 121
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    #@5
    .line 73
    const-string/jumbo v0, "VideoView"

    #@8
    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    #@a
    .line 92
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@c
    .line 93
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    #@e
    .line 96
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@10
    .line 97
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@12
    .line 403
    new-instance v0, Landroid/widget/VideoView$1;

    #@14
    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    #@17
    .line 402
    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@19
    .line 414
    new-instance v0, Landroid/widget/VideoView$2;

    #@1b
    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    #@1e
    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@20
    .line 477
    new-instance v0, Landroid/widget/VideoView$3;

    #@22
    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    #@25
    .line 476
    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@27
    .line 491
    new-instance v0, Landroid/widget/VideoView$4;

    #@29
    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    #@2c
    .line 490
    iput-object v0, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@2e
    .line 501
    new-instance v0, Landroid/widget/VideoView$5;

    #@30
    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    #@33
    .line 500
    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@35
    .line 553
    new-instance v0, Landroid/widget/VideoView$6;

    #@37
    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    #@3a
    .line 552
    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@3c
    .line 604
    new-instance v0, Landroid/widget/VideoView$7;

    #@3e
    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    #@41
    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    #@43
    .line 122
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    #@46
    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 127
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    #@7
    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 73
    const-string/jumbo v0, "VideoView"

    #@8
    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    #@a
    .line 92
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@c
    .line 93
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    #@e
    .line 96
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@10
    .line 97
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@12
    .line 403
    new-instance v0, Landroid/widget/VideoView$1;

    #@14
    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    #@17
    .line 402
    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@19
    .line 414
    new-instance v0, Landroid/widget/VideoView$2;

    #@1b
    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    #@1e
    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@20
    .line 477
    new-instance v0, Landroid/widget/VideoView$3;

    #@22
    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    #@25
    .line 476
    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@27
    .line 491
    new-instance v0, Landroid/widget/VideoView$4;

    #@29
    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    #@2c
    .line 490
    iput-object v0, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@2e
    .line 501
    new-instance v0, Landroid/widget/VideoView$5;

    #@30
    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    #@33
    .line 500
    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@35
    .line 553
    new-instance v0, Landroid/widget/VideoView$6;

    #@37
    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    #@3a
    .line 552
    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@3c
    .line 604
    new-instance v0, Landroid/widget/VideoView$7;

    #@3e
    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    #@41
    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    #@43
    .line 136
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    #@46
    .line 134
    return-void
.end method

.method private attachMediaController()V
    .locals 3

    #@0
    .prologue
    .line 393
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 394
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@a
    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    #@d
    .line 395
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    #@10
    move-result-object v1

    #@11
    instance-of v1, v1, Landroid/view/View;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 396
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/view/View;

    #@1b
    .line 397
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@1d
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    #@20
    .line 398
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@22
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@25
    move-result v2

    #@26
    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    #@29
    .line 392
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    #@2a
    .line 396
    :cond_1
    move-object v0, p0

    #@2b
    .restart local v0    # "anchorView":Landroid/view/View;
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 213
    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@4
    .line 214
    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@6
    .line 215
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    #@c
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    #@f
    .line 216
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x3

    #@14
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    #@17
    .line 217
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    #@1a
    .line 218
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    #@1d
    .line 219
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    #@20
    .line 220
    new-instance v0, Ljava/util/Vector;

    #@22
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@25
    iput-object v0, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    #@27
    .line 221
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@29
    .line 222
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    #@2b
    .line 212
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 789
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 790
    iget v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@8
    const/4 v3, -0x1

    #@9
    if-eq v2, v3, :cond_1

    #@b
    .line 791
    iget v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 792
    iget v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@11
    if-eq v2, v0, :cond_0

    #@13
    .line 789
    :goto_0
    return v0

    #@14
    :cond_0
    move v0, v1

    #@15
    .line 792
    goto :goto_0

    #@16
    :cond_1
    move v0, v1

    #@17
    .line 789
    goto :goto_0
.end method

.method private measureAndLayoutSubtitleWidget()V
    .locals 4

    #@0
    .prologue
    .line 865
    invoke-virtual {p0}, Landroid/widget/VideoView;->getWidth()I

    #@3
    move-result v2

    #@4
    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    #@7
    move-result v3

    #@8
    sub-int/2addr v2, v3

    #@9
    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingRight()I

    #@c
    move-result v3

    #@d
    sub-int v1, v2, v3

    #@f
    .line 866
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHeight()I

    #@12
    move-result v2

    #@13
    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    #@16
    move-result v3

    #@17
    sub-int/2addr v2, v3

    #@18
    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingBottom()I

    #@1b
    move-result v3

    #@1c
    sub-int v0, v2, v3

    #@1e
    .line 868
    .local v0, "height":I
    iget-object v2, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@20
    invoke-interface {v2, v1, v0}, Landroid/media/SubtitleTrack$RenderingWidget;->setSize(II)V

    #@23
    .line 864
    return-void
.end method

.method private openVideo()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v9, 0x0

    #@4
    .line 312
    iget-object v8, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    #@6
    if-eqz v8, :cond_0

    #@8
    iget-object v8, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@a
    if-nez v8, :cond_1

    #@c
    .line 314
    :cond_0
    return-void

    #@d
    .line 318
    :cond_1
    invoke-direct {p0, v9}, Landroid/widget/VideoView;->release(Z)V

    #@10
    .line 320
    iget-object v8, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v9, "audio"

    #@15
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/media/AudioManager;

    #@1b
    .line 321
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v11, v12, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    #@1e
    .line 324
    :try_start_0
    new-instance v8, Landroid/media/MediaPlayer;

    #@20
    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    #@23
    iput-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@25
    .line 327
    invoke-virtual {p0}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    #@28
    move-result-object v1

    #@29
    .line 328
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/media/SubtitleController;

    #@2b
    .line 329
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2d
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    #@30
    move-result-object v8

    #@31
    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@33
    .line 328
    invoke-direct {v2, v1, v8, v9}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    #@36
    .line 330
    .local v2, "controller":Landroid/media/SubtitleController;
    new-instance v8, Landroid/media/WebVttRenderer;

    #@38
    invoke-direct {v8, v1}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    #@3b
    invoke-virtual {v2, v8}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    #@3e
    .line 331
    new-instance v8, Landroid/media/TtmlRenderer;

    #@40
    invoke-direct {v8, v1}, Landroid/media/TtmlRenderer;-><init>(Landroid/content/Context;)V

    #@43
    invoke-virtual {v2, v8}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    #@46
    .line 332
    new-instance v8, Landroid/media/Cea708CaptionRenderer;

    #@48
    invoke-direct {v8, v1}, Landroid/media/Cea708CaptionRenderer;-><init>(Landroid/content/Context;)V

    #@4b
    invoke-virtual {v2, v8}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    #@4e
    .line 333
    new-instance v8, Landroid/media/ClosedCaptionRenderer;

    #@50
    invoke-direct {v8, v1}, Landroid/media/ClosedCaptionRenderer;-><init>(Landroid/content/Context;)V

    #@53
    invoke-virtual {v2, v8}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    #@56
    .line 334
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@58
    invoke-virtual {v8, v2, p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V

    #@5b
    .line 336
    iget v8, p0, Landroid/widget/VideoView;->mAudioSession:I

    #@5d
    if-eqz v8, :cond_2

    #@5f
    .line 337
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@61
    iget v9, p0, Landroid/widget/VideoView;->mAudioSession:I

    #@63
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    #@66
    .line 341
    :goto_0
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@68
    iget-object v9, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@6a
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    #@6d
    .line 342
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@6f
    iget-object v9, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    #@71
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    #@74
    .line 343
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@76
    iget-object v9, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@78
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@7b
    .line 344
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@7d
    iget-object v9, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@7f
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    #@82
    .line 345
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@84
    iget-object v9, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@86
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    #@89
    .line 346
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8b
    iget-object v9, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    #@8d
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    #@90
    .line 347
    const/4 v8, 0x0

    #@91
    iput v8, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    #@93
    .line 348
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@95
    iget-object v9, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    #@97
    iget-object v10, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    #@99
    iget-object v11, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    #@9b
    invoke-virtual {v8, v9, v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    #@9e
    .line 349
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@a0
    iget-object v9, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@a2
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    #@a5
    .line 350
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@a7
    const/4 v9, 0x3

    #@a8
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    #@ab
    .line 351
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@ad
    const/4 v9, 0x1

    #@ae
    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    #@b1
    .line 352
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@b3
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepareAsync()V

    #@b6
    .line 354
    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    #@b8
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bb
    move-result-object v7

    #@bc
    .local v7, "pending$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@bf
    move-result v8

    #@c0
    if-eqz v8, :cond_3

    #@c2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c5
    move-result-object v6

    #@c6
    check-cast v6, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c8
    .line 356
    .local v6, "pending":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/InputStream;Landroid/media/MediaFormat;>;"
    :try_start_1
    iget-object v10, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@ca
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@cc
    check-cast v8, Ljava/io/InputStream;

    #@ce
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@d0
    check-cast v9, Landroid/media/MediaFormat;

    #@d2
    invoke-virtual {v10, v8, v9}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d5
    goto :goto_1

    #@d6
    .line 357
    :catch_0
    move-exception v3

    #@d7
    .line 358
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-object v8, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@d9
    .line 359
    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@db
    const/16 v10, 0x385

    #@dd
    const/4 v11, 0x0

    #@de
    .line 358
    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e1
    goto :goto_1

    #@e2
    .line 367
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v6    # "pending":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/InputStream;Landroid/media/MediaFormat;>;"
    .end local v7    # "pending$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    #@e3
    .line 368
    .local v4, "ex":Ljava/io/IOException;
    :try_start_3
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    #@e5
    new-instance v9, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v10, "Unable to open content: "

    #@ed
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v9

    #@f1
    iget-object v10, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    #@f3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v9

    #@f7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v9

    #@fb
    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@fe
    .line 369
    const/4 v8, -0x1

    #@ff
    iput v8, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@101
    .line 370
    const/4 v8, -0x1

    #@102
    iput v8, p0, Landroid/widget/VideoView;->mTargetState:I

    #@104
    .line 371
    iget-object v8, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@106
    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@108
    const/4 v10, 0x1

    #@109
    const/4 v11, 0x0

    #@10a
    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@10d
    .line 380
    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    #@10f
    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    #@112
    .line 372
    return-void

    #@113
    .line 339
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "controller":Landroid/media/SubtitleController;
    :cond_2
    :try_start_4
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@115
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    #@118
    move-result v8

    #@119
    iput v8, p0, Landroid/widget/VideoView;->mAudioSession:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@11b
    goto/16 :goto_0

    #@11d
    .line 373
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    :catch_2
    move-exception v5

    #@11e
    .line 374
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_5
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    #@120
    new-instance v9, Ljava/lang/StringBuilder;

    #@122
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    const-string/jumbo v10, "Unable to open content: "

    #@128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v9

    #@12c
    iget-object v10, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    #@12e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v9

    #@132
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v9

    #@136
    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@139
    .line 375
    const/4 v8, -0x1

    #@13a
    iput v8, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@13c
    .line 376
    const/4 v8, -0x1

    #@13d
    iput v8, p0, Landroid/widget/VideoView;->mTargetState:I

    #@13f
    .line 377
    iget-object v8, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@141
    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@143
    const/4 v10, 0x1

    #@144
    const/4 v11, 0x0

    #@145
    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@148
    .line 380
    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    #@14a
    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    #@14d
    .line 378
    return-void

    #@14e
    .line 365
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "controller":Landroid/media/SubtitleController;
    .restart local v7    # "pending$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v8, 0x1

    #@14f
    :try_start_6
    iput v8, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@151
    .line 366
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@154
    .line 380
    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    #@156
    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    #@159
    .line 311
    return-void

    #@15a
    .line 379
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    .end local v7    # "pending$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@15b
    .line 380
    iget-object v9, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    #@15d
    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    #@160
    .line 379
    throw v8
.end method

.method private release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 640
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 641
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    #@b
    .line 642
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@d
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    #@10
    .line 643
    iput-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@12
    .line 644
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    #@14
    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    #@17
    .line 645
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@19
    .line 646
    if-eqz p1, :cond_0

    #@1b
    .line 647
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    #@1d
    .line 649
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    #@1f
    const-string/jumbo v2, "audio"

    #@22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/media/AudioManager;

    #@28
    .line 650
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    #@2b
    .line 639
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    #@0
    .prologue
    .line 713
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@2
    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 714
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@a
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@d
    .line 712
    :goto_0
    return-void

    #@e
    .line 716
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@10
    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    #@13
    goto :goto_0
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 285
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 286
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    #@6
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@d
    .line 284
    :goto_0
    return-void

    #@e
    .line 289
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@10
    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 290
    :catch_0
    move-exception v0

    #@15
    .line 291
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@17
    .line 292
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@19
    const/16 v3, 0x385

    #@1b
    const/4 v4, 0x0

    #@1c
    .line 291
    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    #@1f
    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    #@0
    .prologue
    .line 797
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    #@2
    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    #@0
    .prologue
    .line 802
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    #@2
    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    #@0
    .prologue
    .line 807
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    #@2
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 849
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 851
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 852
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@a
    move-result v0

    #@b
    .line 853
    .local v0, "saveCount":I
    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    #@e
    move-result v1

    #@f
    int-to-float v1, v1

    #@10
    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    #@13
    move-result v2

    #@14
    int-to-float v2, v2

    #@15
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@18
    .line 854
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@1a
    invoke-interface {v1, p1}, Landroid/media/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    #@1d
    .line 855
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@20
    .line 848
    .end local v0    # "saveCount":I
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 205
    const-class v0, Landroid/widget/VideoView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 2

    #@0
    .prologue
    .line 812
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 813
    new-instance v0, Landroid/media/MediaPlayer;

    #@6
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    #@9
    .line 814
    .local v0, "foo":Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    #@c
    move-result v1

    #@d
    iput v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    #@f
    .line 815
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    #@12
    .line 817
    .end local v0    # "foo":Landroid/media/MediaPlayer;
    :cond_0
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    #@14
    return v1
.end method

.method public getBufferPercentage()I
    .locals 1

    #@0
    .prologue
    .line 782
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 783
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    #@6
    return v0

    #@7
    .line 785
    :cond_0
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    #@0
    .prologue
    .line 759
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 760
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 762
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public getDuration()I
    .locals 1

    #@0
    .prologue
    .line 750
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 751
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 754
    :cond_0
    const/4 v0, -0x1

    #@e
    return v0
.end method

.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 916
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    #@0
    .prologue
    .line 777
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 822
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    #@3
    .line 824
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 825
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@9
    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    #@c
    .line 821
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 831
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    #@3
    .line 833
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 834
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@9
    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    #@c
    .line 830
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 673
    const/4 v1, 0x4

    #@2
    if-eq p1, v1, :cond_2

    #@4
    .line 674
    const/16 v1, 0x18

    #@6
    if-eq p1, v1, :cond_2

    #@8
    .line 675
    const/16 v1, 0x19

    #@a
    if-eq p1, v1, :cond_2

    #@c
    .line 676
    const/16 v1, 0xa4

    #@e
    if-eq p1, v1, :cond_2

    #@10
    .line 677
    const/16 v1, 0x52

    #@12
    if-eq p1, v1, :cond_2

    #@14
    .line 678
    const/4 v1, 0x5

    #@15
    if-eq p1, v1, :cond_2

    #@17
    .line 679
    const/4 v1, 0x6

    #@18
    if-eq p1, v1, :cond_1

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 680
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_a

    #@21
    if-eqz v0, :cond_a

    #@23
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@25
    if-eqz v1, :cond_a

    #@27
    .line 681
    const/16 v1, 0x4f

    #@29
    if-eq p1, v1, :cond_0

    #@2b
    .line 682
    const/16 v1, 0x55

    #@2d
    if-ne p1, v1, :cond_4

    #@2f
    .line 683
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@31
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 684
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    #@3a
    .line 685
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@3c
    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    #@3f
    .line 690
    :goto_1
    return v2

    #@40
    .line 679
    .end local v0    # "isKeyCodeSupported":Z
    :cond_1
    const/4 v0, 0x0

    #@41
    .restart local v0    # "isKeyCodeSupported":Z
    goto :goto_0

    #@42
    .line 673
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    #@43
    .restart local v0    # "isKeyCodeSupported":Z
    goto :goto_0

    #@44
    .line 687
    :cond_3
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    #@47
    .line 688
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@49
    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    #@4c
    goto :goto_1

    #@4d
    .line 691
    :cond_4
    const/16 v1, 0x7e

    #@4f
    if-ne p1, v1, :cond_6

    #@51
    .line 692
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@53
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@56
    move-result v1

    #@57
    if-nez v1, :cond_5

    #@59
    .line 693
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    #@5c
    .line 694
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@5e
    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    #@61
    .line 696
    :cond_5
    return v2

    #@62
    .line 697
    :cond_6
    const/16 v1, 0x56

    #@64
    if-eq p1, v1, :cond_7

    #@66
    .line 698
    const/16 v1, 0x7f

    #@68
    if-ne p1, v1, :cond_9

    #@6a
    .line 699
    :cond_7
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@6c
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_8

    #@72
    .line 700
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    #@75
    .line 701
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@77
    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    #@7a
    .line 703
    :cond_8
    return v2

    #@7b
    .line 705
    :cond_9
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    #@7e
    .line 709
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@81
    move-result v1

    #@82
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 840
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    #@3
    .line 842
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 843
    invoke-direct {p0}, Landroid/widget/VideoView;->measureAndLayoutSubtitleWidget()V

    #@a
    .line 839
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    #@2
    const/high16 v8, -0x80000000

    #@4
    .line 144
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@6
    invoke-static {v6, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    #@9
    move-result v3

    #@a
    .line 145
    .local v3, "width":I
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@c
    invoke-static {v6, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    #@f
    move-result v0

    #@10
    .line 146
    .local v0, "height":I
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@12
    if-lez v6, :cond_0

    #@14
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@16
    if-lez v6, :cond_0

    #@18
    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@1b
    move-result v4

    #@1c
    .line 149
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1f
    move-result v5

    #@20
    .line 150
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@23
    move-result v1

    #@24
    .line 151
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@27
    move-result v2

    #@28
    .line 153
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_2

    #@2a
    if-ne v1, v7, :cond_2

    #@2c
    .line 155
    move v3, v5

    #@2d
    .line 156
    move v0, v2

    #@2e
    .line 159
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@30
    mul-int/2addr v6, v2

    #@31
    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@33
    mul-int/2addr v7, v5

    #@34
    if-ge v6, v7, :cond_1

    #@36
    .line 161
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@38
    mul-int/2addr v6, v2

    #@39
    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@3b
    div-int v3, v6, v7

    #@3d
    .line 200
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v4    # "widthSpecMode":I
    .end local v5    # "widthSpecSize":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    #@40
    .line 140
    return-void

    #@41
    .line 162
    .restart local v1    # "heightSpecMode":I
    .restart local v2    # "heightSpecSize":I
    .restart local v4    # "widthSpecMode":I
    .restart local v5    # "widthSpecSize":I
    :cond_1
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@43
    mul-int/2addr v6, v2

    #@44
    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@46
    mul-int/2addr v7, v5

    #@47
    if-le v6, v7, :cond_0

    #@49
    .line 164
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@4b
    mul-int/2addr v6, v5

    #@4c
    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@4e
    div-int v0, v6, v7

    #@50
    goto :goto_0

    #@51
    .line 166
    :cond_2
    if-ne v4, v7, :cond_3

    #@53
    .line 168
    move v3, v5

    #@54
    .line 169
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@56
    mul-int/2addr v6, v5

    #@57
    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@59
    div-int v0, v6, v7

    #@5b
    .line 170
    if-ne v1, v8, :cond_0

    #@5d
    if-le v0, v2, :cond_0

    #@5f
    .line 172
    move v0, v2

    #@60
    goto :goto_0

    #@61
    .line 174
    :cond_3
    if-ne v1, v7, :cond_4

    #@63
    .line 176
    move v0, v2

    #@64
    .line 177
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@66
    mul-int/2addr v6, v2

    #@67
    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@69
    div-int v3, v6, v7

    #@6b
    .line 178
    if-ne v4, v8, :cond_0

    #@6d
    if-le v3, v5, :cond_0

    #@6f
    .line 180
    move v3, v5

    #@70
    goto :goto_0

    #@71
    .line 184
    :cond_4
    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@73
    .line 185
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@75
    .line 186
    if-ne v1, v8, :cond_5

    #@77
    if-le v0, v2, :cond_5

    #@79
    .line 188
    move v0, v2

    #@7a
    .line 189
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@7c
    mul-int/2addr v6, v2

    #@7d
    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@7f
    div-int v3, v6, v7

    #@81
    .line 191
    :cond_5
    if-ne v4, v8, :cond_0

    #@83
    if-le v3, v5, :cond_0

    #@85
    .line 193
    move v3, v5

    #@86
    .line 194
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    #@88
    mul-int/2addr v6, v5

    #@89
    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    #@8b
    div-int v0, v6, v7

    #@8d
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 656
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 657
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    #@d
    .line 659
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 664
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 665
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    #@d
    .line 667
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public pause()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 731
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 732
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 733
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    #@14
    .line 734
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@16
    .line 737
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    #@18
    .line 730
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 1
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    #@0
    .prologue
    .line 209
    invoke-static {p1, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public resume()V
    .locals 0

    #@0
    .prologue
    .line 745
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    #@3
    .line 744
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    #@0
    .prologue
    .line 767
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 768
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    #@b
    .line 769
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    #@e
    .line 766
    :goto_0
    return-void

    #@f
    .line 771
    :cond_0
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    #@11
    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 386
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@6
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@9
    .line 388
    :cond_0
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    #@b
    .line 389
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    #@e
    .line 384
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    #@0
    .prologue
    .line 578
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    #@2
    .line 576
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    #@0
    .prologue
    .line 591
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    #@2
    .line 589
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    #@0
    .prologue
    .line 601
    iput-object p1, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    #@2
    .line 600
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    #@0
    .prologue
    .line 567
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    #@2
    .line 565
    return-void
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 3
    .param p1, "subtitleWidget"    # Landroid/media/SubtitleTrack$RenderingWidget;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 874
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@3
    if-ne v1, p1, :cond_0

    #@5
    .line 875
    return-void

    #@6
    .line 878
    :cond_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->isAttachedToWindow()Z

    #@9
    move-result v0

    #@a
    .line 879
    .local v0, "attachedToWindow":Z
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 880
    if-eqz v0, :cond_1

    #@10
    .line 881
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@12
    invoke-interface {v1}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    #@15
    .line 884
    :cond_1
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@17
    invoke-interface {v1, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    #@1a
    .line 887
    :cond_2
    iput-object p1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    #@1c
    .line 889
    if-eqz p1, :cond_5

    #@1e
    .line 890
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@20
    if-nez v1, :cond_3

    #@22
    .line 891
    new-instance v1, Landroid/widget/VideoView$8;

    #@24
    invoke-direct {v1, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    #@27
    iput-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@29
    .line 899
    :cond_3
    const/4 v1, 0x0

    #@2a
    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    #@2d
    .line 900
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@2f
    invoke-interface {p1, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    #@32
    .line 902
    if-eqz v0, :cond_4

    #@34
    .line 903
    invoke-interface {p1}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    #@37
    .line 904
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    #@3a
    .line 910
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    #@3d
    .line 873
    return-void

    #@3e
    .line 907
    :cond_5
    const/4 v1, 0x1

    #@3f
    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    #@42
    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    #@7
    .line 230
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 240
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    #@4
    .line 239
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    #@2
    .line 255
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    #@4
    .line 256
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    #@7
    .line 257
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    #@a
    .line 258
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    #@d
    .line 259
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    #@10
    .line 253
    return-void
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 722
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 723
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    #@c
    .line 724
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@e
    .line 726
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    #@10
    .line 721
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 300
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 301
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@8
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    #@b
    .line 302
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@d
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    #@10
    .line 303
    iput-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    #@12
    .line 304
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    #@14
    .line 305
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    #@16
    .line 306
    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    #@18
    const-string/jumbo v2, "audio"

    #@1b
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/media/AudioManager;

    #@21
    .line 307
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    #@24
    .line 299
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    #@0
    .prologue
    .line 741
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    #@4
    .line 740
    return-void
.end method
