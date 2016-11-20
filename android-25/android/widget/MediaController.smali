.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$1;,
        Landroid/widget/MediaController$2;,
        Landroid/widget/MediaController$3;,
        Landroid/widget/MediaController$4;,
        Landroid/widget/MediaController$5;,
        Landroid/widget/MediaController$6;,
        Landroid/widget/MediaController$7;,
        Landroid/widget/MediaController$8;,
        Landroid/widget/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private final mFadeOut:Ljava/lang/Runnable;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private final mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseDescription:Ljava/lang/CharSequence;

.field private final mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayDescription:Ljava/lang/CharSequence;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private final mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mShowProgress:Ljava/lang/Runnable;

.field private mShowing:Z

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUseFastForward:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Landroid/widget/MediaController;)Landroid/widget/TextView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/MediaController;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/MediaController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/MediaController;->mDragging:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/MediaController;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/MediaController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/widget/MediaController;)Landroid/view/WindowManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/MediaController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/MediaController;->mDragging:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/MediaController;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/MediaController;I)Ljava/lang/String;
    .locals 1
    .param p1, "timeMs"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/widget/MediaController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/MediaController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/MediaController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 124
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    #@4
    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 184
    new-instance v0, Landroid/widget/MediaController$1;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    #@9
    .line 183
    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@b
    .line 196
    new-instance v0, Landroid/widget/MediaController$2;

    #@d
    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    #@10
    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    #@12
    .line 402
    new-instance v0, Landroid/widget/MediaController$3;

    #@14
    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    #@17
    iput-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    #@19
    .line 409
    new-instance v0, Landroid/widget/MediaController$4;

    #@1b
    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    #@1e
    iput-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    #@20
    .line 530
    new-instance v0, Landroid/widget/MediaController$5;

    #@22
    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    #@25
    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    #@27
    .line 571
    new-instance v0, Landroid/widget/MediaController$6;

    #@29
    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    #@2c
    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    #@2e
    .line 644
    new-instance v0, Landroid/widget/MediaController$7;

    #@30
    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    #@33
    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    #@35
    .line 656
    new-instance v0, Landroid/widget/MediaController$8;

    #@37
    invoke-direct {v0, p0}, Landroid/widget/MediaController$8;-><init>(Landroid/widget/MediaController;)V

    #@3a
    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    #@3c
    .line 101
    iput-object p0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@3e
    .line 102
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@40
    .line 103
    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    #@42
    .line 104
    iput-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@44
    .line 105
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@4a
    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    #@0
    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 184
    new-instance v0, Landroid/widget/MediaController$1;

    #@5
    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    #@8
    .line 183
    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@a
    .line 196
    new-instance v0, Landroid/widget/MediaController$2;

    #@c
    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    #@f
    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    #@11
    .line 402
    new-instance v0, Landroid/widget/MediaController$3;

    #@13
    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    #@16
    iput-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    #@18
    .line 409
    new-instance v0, Landroid/widget/MediaController$4;

    #@1a
    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    #@1d
    iput-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    #@1f
    .line 530
    new-instance v0, Landroid/widget/MediaController$5;

    #@21
    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    #@24
    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    #@26
    .line 571
    new-instance v0, Landroid/widget/MediaController$6;

    #@28
    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    #@2b
    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    #@2d
    .line 644
    new-instance v0, Landroid/widget/MediaController$7;

    #@2f
    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    #@32
    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    #@34
    .line 656
    new-instance v0, Landroid/widget/MediaController$8;

    #@36
    invoke-direct {v0, p0}, Landroid/widget/MediaController$8;-><init>(Landroid/widget/MediaController;)V

    #@39
    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    #@3b
    .line 116
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@3d
    .line 117
    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    #@3f
    .line 118
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindowLayout()V

    #@42
    .line 119
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    #@45
    .line 120
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@4b
    .line 114
    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 3

    #@0
    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@6
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_4

    #@c
    .line 326
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@12
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_5

    #@18
    .line 329
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@1e
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_6

    #@24
    .line 339
    :cond_2
    :goto_2
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@26
    if-eqz v1, :cond_3

    #@28
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@2a
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_7

    #@30
    .line 321
    :cond_3
    :goto_3
    return-void

    #@31
    .line 324
    :cond_4
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@33
    const/4 v2, 0x0

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@37
    goto :goto_0

    #@38
    .line 342
    :catch_0
    move-exception v0

    #@39
    .local v0, "ex":Ljava/lang/IncompatibleClassChangeError;
    goto :goto_3

    #@3a
    .line 327
    .end local v0    # "ex":Ljava/lang/IncompatibleClassChangeError;
    :cond_5
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@3c
    const/4 v2, 0x0

    #@3d
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@40
    goto :goto_1

    #@41
    .line 330
    :cond_6
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@43
    const/4 v2, 0x0

    #@44
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@47
    goto :goto_2

    #@48
    .line 339
    :cond_7
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@4a
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    #@4d
    move-result v1

    #@4e
    if-nez v1, :cond_3

    #@50
    .line 340
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@52
    const/4 v2, 0x0

    #@53
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    goto :goto_3
.end method

.method private doPauseResume()V
    .locals 1

    #@0
    .prologue
    .line 552
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@2
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 553
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@a
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    #@d
    .line 557
    :goto_0
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@10
    .line 551
    return-void

    #@11
    .line 555
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@13
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    #@16
    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v4, 0x8

    #@3
    .line 255
    iget-object v2, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    .line 257
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x10402a5

    #@c
    .line 256
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    #@12
    .line 259
    const v2, 0x10402a4

    #@15
    .line 258
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    #@1b
    .line 260
    const v2, 0x1020398

    #@1e
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/widget/ImageButton;

    #@24
    iput-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@26
    .line 261
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@28
    if-eqz v2, :cond_0

    #@2a
    .line 262
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@2c
    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    #@2f
    .line 263
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@31
    iget-object v5, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    #@33
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@36
    .line 266
    :cond_0
    const v2, 0x1020399

    #@39
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Landroid/widget/ImageButton;

    #@3f
    iput-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@41
    .line 267
    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 268
    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@47
    iget-object v5, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    #@49
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@4c
    .line 269
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@4e
    if-nez v2, :cond_1

    #@50
    .line 270
    iget-object v5, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@52
    iget-boolean v2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    #@54
    if-eqz v2, :cond_7

    #@56
    move v2, v3

    #@57
    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@5a
    .line 274
    :cond_1
    const v2, 0x1020397

    #@5d
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Landroid/widget/ImageButton;

    #@63
    iput-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@65
    .line 275
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@67
    if-eqz v2, :cond_2

    #@69
    .line 276
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@6b
    iget-object v5, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    #@6d
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@70
    .line 277
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@72
    if-nez v2, :cond_2

    #@74
    .line 278
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@76
    iget-boolean v5, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    #@78
    if-eqz v5, :cond_8

    #@7a
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@7d
    .line 283
    :cond_2
    const v2, 0x1020362

    #@80
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@83
    move-result-object v2

    #@84
    check-cast v2, Landroid/widget/ImageButton;

    #@86
    iput-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@88
    .line 284
    iget-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@8a
    if-eqz v2, :cond_3

    #@8c
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@8e
    if-eqz v2, :cond_9

    #@90
    .line 287
    :cond_3
    :goto_2
    const v2, 0x1020356

    #@93
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@96
    move-result-object v2

    #@97
    check-cast v2, Landroid/widget/ImageButton;

    #@99
    iput-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@9b
    .line 288
    iget-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@9d
    if-eqz v2, :cond_4

    #@9f
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@a1
    if-eqz v2, :cond_a

    #@a3
    .line 292
    :cond_4
    :goto_3
    const v2, 0x102039b

    #@a6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@a9
    move-result-object v2

    #@aa
    check-cast v2, Landroid/widget/ProgressBar;

    #@ac
    iput-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@ae
    .line 293
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@b0
    if-eqz v2, :cond_6

    #@b2
    .line 294
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@b4
    instance-of v2, v2, Landroid/widget/SeekBar;

    #@b6
    if-eqz v2, :cond_5

    #@b8
    .line 295
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@ba
    check-cast v1, Landroid/widget/SeekBar;

    #@bc
    .line 296
    .local v1, "seeker":Landroid/widget/SeekBar;
    iget-object v2, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    #@be
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@c1
    .line 298
    .end local v1    # "seeker":Landroid/widget/SeekBar;
    :cond_5
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@c3
    const/16 v3, 0x3e8

    #@c5
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    #@c8
    .line 301
    :cond_6
    const v2, 0x1020095

    #@cb
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@ce
    move-result-object v2

    #@cf
    check-cast v2, Landroid/widget/TextView;

    #@d1
    iput-object v2, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    #@d3
    .line 302
    const v2, 0x102039a

    #@d6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@d9
    move-result-object v2

    #@da
    check-cast v2, Landroid/widget/TextView;

    #@dc
    iput-object v2, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    #@de
    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    iput-object v2, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@e5
    .line 304
    new-instance v2, Ljava/util/Formatter;

    #@e7
    iget-object v3, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@e9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@ec
    move-result-object v4

    #@ed
    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@f0
    iput-object v2, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    #@f2
    .line 306
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    #@f5
    .line 254
    return-void

    #@f6
    :cond_7
    move v2, v4

    #@f7
    .line 270
    goto/16 :goto_0

    #@f9
    :cond_8
    move v3, v4

    #@fa
    .line 278
    goto :goto_1

    #@fb
    .line 284
    :cond_9
    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    #@fd
    if-nez v2, :cond_3

    #@ff
    .line 285
    iget-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@101
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@104
    goto :goto_2

    #@105
    .line 288
    :cond_a
    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    #@107
    if-nez v2, :cond_4

    #@109
    .line 289
    iget-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@10b
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@10e
    goto :goto_3
.end method

.method private initFloatingWindow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 128
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v1, "window"

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/WindowManager;

    #@d
    iput-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    #@f
    .line 129
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    #@11
    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@13
    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    #@16
    iput-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@18
    .line 130
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@1a
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    #@1c
    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    #@1f
    .line 131
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@21
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    #@24
    .line 132
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@26
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@2c
    .line 133
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@2e
    iget-object v1, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    #@30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@33
    .line 134
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@35
    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    #@38
    .line 135
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@3a
    const v1, 0x106000d

    #@3d
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    #@40
    .line 139
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@42
    const/4 v1, 0x3

    #@43
    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    #@46
    .line 141
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusable(Z)V

    #@49
    .line 142
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusableInTouchMode(Z)V

    #@4c
    .line 143
    const/high16 v0, 0x40000

    #@4e
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->setDescendantFocusability(I)V

    #@51
    .line 144
    invoke-virtual {p0}, Landroid/widget/MediaController;->requestFocus()Z

    #@54
    .line 127
    return-void
.end method

.method private initFloatingWindowLayout()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 151
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    #@3
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@6
    iput-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@8
    .line 152
    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@a
    .line 153
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    #@c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@e
    .line 154
    const/4 v1, -0x2

    #@f
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@11
    .line 155
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@13
    .line 156
    const/4 v1, -0x3

    #@14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@16
    .line 157
    const/16 v1, 0x3e8

    #@18
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1a
    .line 158
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1c
    const v2, 0x820020

    #@1f
    or-int/2addr v1, v2

    #@20
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@22
    .line 161
    const/4 v1, 0x0

    #@23
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@25
    .line 162
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@27
    .line 150
    return-void
.end method

.method private installPrevNextListeners()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 669
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 670
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@8
    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    #@a
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@d
    .line 671
    iget-object v3, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@f
    iget-object v0, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    #@11
    if-eqz v0, :cond_2

    #@13
    move v0, v1

    #@14
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@17
    .line 674
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 675
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@1d
    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    #@1f
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@22
    .line 676
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@24
    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    #@26
    if-eqz v3, :cond_3

    #@28
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@2b
    .line 668
    :cond_1
    return-void

    #@2c
    :cond_2
    move v0, v2

    #@2d
    .line 671
    goto :goto_0

    #@2e
    :cond_3
    move v1, v2

    #@2f
    .line 676
    goto :goto_1
.end method

.method private setProgress()I
    .locals 10

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 435
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@3
    if-eqz v5, :cond_0

    #@5
    iget-boolean v5, p0, Landroid/widget/MediaController;->mDragging:Z

    #@7
    if-eqz v5, :cond_1

    #@9
    .line 436
    :cond_0
    return v6

    #@a
    .line 438
    :cond_1
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@c
    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    #@f
    move-result v4

    #@10
    .line 439
    .local v4, "position":I
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@12
    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    #@15
    move-result v0

    #@16
    .line 440
    .local v0, "duration":I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@18
    if-eqz v5, :cond_3

    #@1a
    .line 441
    if-lez v0, :cond_2

    #@1c
    .line 443
    int-to-long v6, v4

    #@1d
    const-wide/16 v8, 0x3e8

    #@1f
    mul-long/2addr v6, v8

    #@20
    int-to-long v8, v0

    #@21
    div-long v2, v6, v8

    #@23
    .line 444
    .local v2, "pos":J
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@25
    long-to-int v6, v2

    #@26
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@29
    .line 446
    .end local v2    # "pos":J
    :cond_2
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@2b
    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    #@2e
    move-result v1

    #@2f
    .line 447
    .local v1, "percent":I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@31
    mul-int/lit8 v6, v1, 0xa

    #@33
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    #@36
    .line 450
    .end local v1    # "percent":I
    :cond_3
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    #@38
    if-eqz v5, :cond_4

    #@3a
    .line 451
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    #@3c
    invoke-direct {p0, v0}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@43
    .line 452
    :cond_4
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    #@45
    if-eqz v5, :cond_5

    #@47
    .line 453
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    #@49
    invoke-direct {p0, v4}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@50
    .line 455
    :cond_5
    return v4
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .param p1, "timeMs"    # I

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 420
    div-int/lit16 v3, p1, 0x3e8

    #@5
    .line 422
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    #@7
    .line 423
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    #@9
    rem-int/lit8 v1, v4, 0x3c

    #@b
    .line 424
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    #@d
    .line 426
    .local v0, "hours":I
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    #@12
    .line 427
    if-lez v0, :cond_0

    #@14
    .line 428
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    #@16
    const-string/jumbo v5, "%d:%02d:%02d"

    #@19
    const/4 v6, 0x3

    #@1a
    new-array v6, v6, [Ljava/lang/Object;

    #@1c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v7

    #@20
    aput-object v7, v6, v8

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v7

    #@26
    aput-object v7, v6, v9

    #@28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v7

    #@2c
    aput-object v7, v6, v10

    #@2e
    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    return-object v4

    #@37
    .line 430
    :cond_0
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    #@39
    const-string/jumbo v5, "%02d:%02d"

    #@3c
    new-array v6, v10, [Ljava/lang/Object;

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v7

    #@42
    aput-object v7, v6, v8

    #@44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v7

    #@48
    aput-object v7, v6, v9

    #@4a
    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    return-object v4
.end method

.method private updateFloatingWindowLayout()V
    .locals 6

    #@0
    .prologue
    const/high16 v5, -0x80000000

    #@2
    .line 168
    const/4 v2, 0x2

    #@3
    new-array v0, v2, [I

    #@5
    .line 169
    .local v0, "anchorPos":[I
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@7
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@a
    .line 173
    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@c
    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@e
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@11
    move-result v3

    #@12
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@15
    move-result v3

    #@16
    .line 174
    iget-object v4, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@18
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@1b
    move-result v4

    #@1c
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1f
    move-result v4

    #@20
    .line 173
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    #@23
    .line 176
    iget-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@25
    .line 177
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@27
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@2a
    move-result v2

    #@2b
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2d
    .line 178
    const/4 v2, 0x0

    #@2e
    aget v2, v0, v2

    #@30
    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@32
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@35
    move-result v3

    #@36
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@38
    sub-int/2addr v3, v4

    #@39
    div-int/lit8 v3, v3, 0x2

    #@3b
    add-int/2addr v2, v3

    #@3c
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@3e
    .line 179
    const/4 v2, 0x1

    #@3f
    aget v2, v0, v2

    #@41
    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@43
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@46
    move-result v3

    #@47
    add-int/2addr v2, v3

    #@48
    iget-object v3, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@4a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@4d
    move-result v3

    #@4e
    sub-int/2addr v2, v3

    #@4f
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@51
    .line 167
    return-void
.end method

.method private updatePausePlay()V
    .locals 2

    #@0
    .prologue
    .line 539
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 540
    :cond_0
    return-void

    #@9
    .line 542
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@b
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 543
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@13
    const v1, 0x1080023

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    #@19
    .line 544
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@1b
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@20
    .line 538
    :goto_0
    return-void

    #@21
    .line 546
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@23
    const v1, 0x1080024

    #@26
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    #@29
    .line 547
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@2b
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    #@2d
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@30
    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v4, 0xbb8

    #@2
    const/4 v3, 0x1

    #@3
    .line 484
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@6
    move-result v0

    #@7
    .line 485
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_3

    #@d
    .line 486
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_2

    #@13
    const/4 v1, 0x1

    #@14
    .line 487
    .local v1, "uniqueDown":Z
    :goto_0
    const/16 v2, 0x4f

    #@16
    if-eq v0, v2, :cond_0

    #@18
    .line 488
    const/16 v2, 0x55

    #@1a
    if-ne v0, v2, :cond_4

    #@1c
    .line 490
    :cond_0
    if-eqz v1, :cond_1

    #@1e
    .line 491
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    #@21
    .line 492
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    #@24
    .line 493
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 494
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@2a
    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    #@2d
    .line 497
    :cond_1
    return v3

    #@2e
    .line 486
    .end local v1    # "uniqueDown":Z
    :cond_2
    const/4 v1, 0x0

    #@2f
    .restart local v1    # "uniqueDown":Z
    goto :goto_0

    #@30
    .line 485
    .end local v1    # "uniqueDown":Z
    :cond_3
    const/4 v1, 0x0

    #@31
    .restart local v1    # "uniqueDown":Z
    goto :goto_0

    #@32
    .line 489
    :cond_4
    const/16 v2, 0x3e

    #@34
    if-eq v0, v2, :cond_0

    #@36
    .line 498
    const/16 v2, 0x7e

    #@38
    if-ne v0, v2, :cond_7

    #@3a
    .line 499
    if-eqz v1, :cond_5

    #@3c
    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@3e
    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_6

    #@44
    .line 504
    :cond_5
    :goto_1
    return v3

    #@45
    .line 500
    :cond_6
    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@47
    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    #@4a
    .line 501
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@4d
    .line 502
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    #@50
    goto :goto_1

    #@51
    .line 505
    :cond_7
    const/16 v2, 0x56

    #@53
    if-eq v0, v2, :cond_8

    #@55
    .line 506
    const/16 v2, 0x7f

    #@57
    if-ne v0, v2, :cond_a

    #@59
    .line 507
    :cond_8
    if-eqz v1, :cond_9

    #@5b
    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@5d
    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_9

    #@63
    .line 508
    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@65
    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    #@68
    .line 509
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@6b
    .line 510
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    #@6e
    .line 512
    :cond_9
    return v3

    #@6f
    .line 513
    :cond_a
    const/16 v2, 0x19

    #@71
    if-eq v0, v2, :cond_b

    #@73
    .line 514
    const/16 v2, 0x18

    #@75
    if-ne v0, v2, :cond_c

    #@77
    .line 518
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@7a
    move-result v2

    #@7b
    return v2

    #@7c
    .line 515
    :cond_c
    const/16 v2, 0xa4

    #@7e
    if-eq v0, v2, :cond_b

    #@80
    .line 516
    const/16 v2, 0x1b

    #@82
    if-eq v0, v2, :cond_b

    #@84
    .line 519
    const/4 v2, 0x4

    #@85
    if-eq v0, v2, :cond_d

    #@87
    const/16 v2, 0x52

    #@89
    if-ne v0, v2, :cond_f

    #@8b
    .line 520
    :cond_d
    if-eqz v1, :cond_e

    #@8d
    .line 521
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    #@90
    .line 523
    :cond_e
    return v3

    #@91
    .line 526
    :cond_f
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    #@94
    .line 527
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@97
    move-result v2

    #@98
    return v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 641
    const-class v0, Landroid/widget/MediaController;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hide()V
    .locals 3

    #@0
    .prologue
    .line 388
    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 389
    return-void

    #@5
    .line 391
    :cond_0
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 393
    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    #@b
    invoke-virtual {p0, v1}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@e
    .line 394
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    #@10
    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@12
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 398
    :goto_0
    const/4 v1, 0x0

    #@16
    iput-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    #@18
    .line 387
    :cond_1
    return-void

    #@19
    .line 395
    :catch_0
    move-exception v0

    #@1a
    .line 396
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "MediaController"

    #@1d
    const-string/jumbo v2, "already removed"

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 381
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    #@2
    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    #@0
    .prologue
    .line 246
    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "layout_inflater"

    #@5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/view/LayoutInflater;

    #@b
    .line 247
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x109007f

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@15
    .line 249
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@17
    invoke-direct {p0, v1}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    #@1a
    .line 251
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@1c
    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 111
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@6
    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    #@9
    .line 109
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 473
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 462
    :pswitch_1
    const/4 v0, 0x0

    #@a
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    #@d
    goto :goto_0

    #@e
    .line 465
    :pswitch_2
    const/16 v0, 0xbb8

    #@10
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    #@13
    goto :goto_0

    #@14
    .line 468
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    #@17
    goto :goto_0

    #@18
    .line 460
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 478
    const/16 v0, 0xbb8

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    #@5
    .line 479
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 221
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 222
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@7
    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@9
    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@c
    .line 224
    :cond_0
    iput-object p1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@e
    .line 225
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 226
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@14
    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@16
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@19
    .line 229
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@1b
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@1e
    .line 234
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/MediaController;->removeAllViews()V

    #@21
    .line 235
    invoke-virtual {p0}, Landroid/widget/MediaController;->makeControllerView()Landroid/view/View;

    #@24
    move-result-object v1

    #@25
    .line 236
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/widget/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@28
    .line 220
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 617
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 618
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@b
    .line 620
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 621
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@14
    .line 623
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 624
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@1a
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@1d
    .line 626
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 627
    iget-object v3, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@23
    if-eqz p1, :cond_7

    #@25
    iget-object v0, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    #@27
    if-eqz v0, :cond_7

    #@29
    move v0, v1

    #@2a
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@2d
    .line 629
    :cond_3
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@2f
    if-eqz v0, :cond_5

    #@31
    .line 630
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@33
    if-eqz p1, :cond_4

    #@35
    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    #@37
    if-eqz v3, :cond_4

    #@39
    move v2, v1

    #@3a
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@3d
    .line 632
    :cond_5
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@3f
    if-eqz v0, :cond_6

    #@41
    .line 633
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@43
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    #@46
    .line 635
    :cond_6
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    #@49
    .line 636
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@4c
    .line 616
    return-void

    #@4d
    :cond_7
    move v0, v2

    #@4e
    .line 627
    goto :goto_0
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Landroid/widget/MediaController$MediaPlayerControl;

    #@0
    .prologue
    .line 209
    iput-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@2
    .line 210
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@5
    .line 208
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "next"    # Landroid/view/View$OnClickListener;
    .param p2, "prev"    # Landroid/view/View$OnClickListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 681
    iput-object p1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    #@3
    .line 682
    iput-object p2, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    #@5
    .line 683
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/widget/MediaController;->mListenersSet:Z

    #@8
    .line 685
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 686
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    #@f
    .line 688
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 691
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@19
    if-eqz v0, :cond_1

    #@1b
    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 680
    :cond_1
    :goto_1
    return-void

    #@20
    .line 689
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@25
    goto :goto_0

    #@26
    .line 692
    :cond_3
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@28
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@2b
    goto :goto_1
.end method

.method public show()V
    .locals 1

    #@0
    .prologue
    .line 314
    const/16 v0, 0xbb8

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    #@5
    .line 313
    return-void
.end method

.method public show(I)V
    .locals 4
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 357
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-object v0, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 358
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    #@b
    .line 359
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 360
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@11
    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    #@14
    .line 362
    :cond_0
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    #@17
    .line 363
    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    #@1a
    .line 364
    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    #@1c
    iget-object v1, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@1e
    iget-object v2, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@20
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@23
    .line 365
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    #@26
    .line 367
    :cond_1
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@29
    .line 372
    iget-object v0, p0, Landroid/widget/MediaController;->mShowProgress:Ljava/lang/Runnable;

    #@2b
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->post(Ljava/lang/Runnable;)Z

    #@2e
    .line 374
    if-eqz p1, :cond_2

    #@30
    iget-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@32
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_3

    #@38
    .line 356
    :cond_2
    :goto_0
    return-void

    #@39
    .line 375
    :cond_3
    iget-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    #@3b
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@3e
    .line 376
    iget-object v0, p0, Landroid/widget/MediaController;->mFadeOut:Ljava/lang/Runnable;

    #@40
    int-to-long v2, p1

    #@41
    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/MediaController;->postDelayed(Ljava/lang/Runnable;J)Z

    #@44
    goto :goto_0
.end method
