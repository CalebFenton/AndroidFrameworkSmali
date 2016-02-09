.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$MediaPlayerControl;,
        Landroid/widget/MediaController$1;,
        Landroid/widget/MediaController$2;,
        Landroid/widget/MediaController$3;,
        Landroid/widget/MediaController$4;,
        Landroid/widget/MediaController$5;,
        Landroid/widget/MediaController$6;,
        Landroid/widget/MediaController$7;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

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

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private final mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private final mHandler:Landroid/os/Handler;

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

.method static synthetic -get4(Landroid/widget/MediaController;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

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
    .line 128
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    #@4
    .line 127
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
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 188
    new-instance v0, Landroid/widget/MediaController$1;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    #@9
    .line 187
    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@b
    .line 200
    new-instance v0, Landroid/widget/MediaController$2;

    #@d
    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    #@10
    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    #@12
    .line 407
    new-instance v0, Landroid/widget/MediaController$3;

    #@14
    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    #@17
    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    #@19
    .line 537
    new-instance v0, Landroid/widget/MediaController$4;

    #@1b
    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    #@1e
    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    #@20
    .line 578
    new-instance v0, Landroid/widget/MediaController$5;

    #@22
    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    #@25
    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    #@27
    .line 651
    new-instance v0, Landroid/widget/MediaController$6;

    #@29
    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    #@2c
    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    #@2e
    .line 663
    new-instance v0, Landroid/widget/MediaController$7;

    #@30
    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    #@33
    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    #@35
    .line 105
    iput-object p0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@37
    .line 106
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@39
    .line 107
    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    #@3b
    .line 108
    iput-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@3d
    .line 109
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@43
    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    #@0
    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 188
    new-instance v0, Landroid/widget/MediaController$1;

    #@5
    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    #@8
    .line 187
    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@a
    .line 200
    new-instance v0, Landroid/widget/MediaController$2;

    #@c
    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    #@f
    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    #@11
    .line 407
    new-instance v0, Landroid/widget/MediaController$3;

    #@13
    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    #@16
    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    #@18
    .line 537
    new-instance v0, Landroid/widget/MediaController$4;

    #@1a
    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    #@1d
    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    #@1f
    .line 578
    new-instance v0, Landroid/widget/MediaController$5;

    #@21
    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    #@24
    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    #@26
    .line 651
    new-instance v0, Landroid/widget/MediaController$6;

    #@28
    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    #@2b
    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    #@2d
    .line 663
    new-instance v0, Landroid/widget/MediaController$7;

    #@2f
    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    #@32
    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    #@34
    .line 120
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@36
    .line 121
    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    #@38
    .line 122
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindowLayout()V

    #@3b
    .line 123
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    #@3e
    .line 124
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@44
    .line 118
    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 3

    #@0
    .prologue
    .line 327
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
    .line 330
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
    .line 333
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
    .line 343
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
    .line 325
    :cond_3
    :goto_3
    return-void

    #@31
    .line 328
    :cond_4
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@33
    const/4 v2, 0x0

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@37
    goto :goto_0

    #@38
    .line 346
    :catch_0
    move-exception v0

    #@39
    .local v0, "ex":Ljava/lang/IncompatibleClassChangeError;
    goto :goto_3

    #@3a
    .line 331
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
    .line 334
    :cond_6
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@43
    const/4 v2, 0x0

    #@44
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@47
    goto :goto_2

    #@48
    .line 343
    :cond_7
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@4a
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    #@4d
    move-result v1

    #@4e
    if-nez v1, :cond_3

    #@50
    .line 344
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
    .line 559
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@2
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 560
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@a
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    #@d
    .line 564
    :goto_0
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@10
    .line 558
    return-void

    #@11
    .line 562
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
    .line 259
    iget-object v2, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    .line 261
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x1040276

    #@c
    .line 260
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    #@12
    .line 263
    const v2, 0x1040275

    #@15
    .line 262
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    #@1b
    .line 264
    const v2, 0x1020359

    #@1e
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/widget/ImageButton;

    #@24
    iput-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@26
    .line 265
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@28
    if-eqz v2, :cond_0

    #@2a
    .line 266
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@2c
    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    #@2f
    .line 267
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@31
    iget-object v5, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    #@33
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@36
    .line 270
    :cond_0
    const v2, 0x102035a

    #@39
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Landroid/widget/ImageButton;

    #@3f
    iput-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@41
    .line 271
    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 272
    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@47
    iget-object v5, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    #@49
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@4c
    .line 273
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@4e
    if-nez v2, :cond_1

    #@50
    .line 274
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
    .line 278
    :cond_1
    const v2, 0x1020358

    #@5d
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Landroid/widget/ImageButton;

    #@63
    iput-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@65
    .line 279
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@67
    if-eqz v2, :cond_2

    #@69
    .line 280
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@6b
    iget-object v5, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    #@6d
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@70
    .line 281
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@72
    if-nez v2, :cond_2

    #@74
    .line 282
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@76
    iget-boolean v5, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    #@78
    if-eqz v5, :cond_8

    #@7a
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@7d
    .line 287
    :cond_2
    const v2, 0x1020327

    #@80
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@83
    move-result-object v2

    #@84
    check-cast v2, Landroid/widget/ImageButton;

    #@86
    iput-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@88
    .line 288
    iget-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@8a
    if-eqz v2, :cond_3

    #@8c
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@8e
    if-eqz v2, :cond_9

    #@90
    .line 291
    :cond_3
    :goto_2
    const v2, 0x1020326

    #@93
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@96
    move-result-object v2

    #@97
    check-cast v2, Landroid/widget/ImageButton;

    #@99
    iput-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@9b
    .line 292
    iget-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@9d
    if-eqz v2, :cond_4

    #@9f
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@a1
    if-eqz v2, :cond_a

    #@a3
    .line 296
    :cond_4
    :goto_3
    const v2, 0x102035c

    #@a6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@a9
    move-result-object v2

    #@aa
    check-cast v2, Landroid/widget/ProgressBar;

    #@ac
    iput-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@ae
    .line 297
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@b0
    if-eqz v2, :cond_6

    #@b2
    .line 298
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@b4
    instance-of v2, v2, Landroid/widget/SeekBar;

    #@b6
    if-eqz v2, :cond_5

    #@b8
    .line 299
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@ba
    check-cast v1, Landroid/widget/SeekBar;

    #@bc
    .line 300
    .local v1, "seeker":Landroid/widget/SeekBar;
    iget-object v2, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    #@be
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@c1
    .line 302
    .end local v1    # "seeker":Landroid/widget/SeekBar;
    :cond_5
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@c3
    const/16 v3, 0x3e8

    #@c5
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    #@c8
    .line 305
    :cond_6
    const v2, 0x102008c

    #@cb
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@ce
    move-result-object v2

    #@cf
    check-cast v2, Landroid/widget/TextView;

    #@d1
    iput-object v2, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    #@d3
    .line 306
    const v2, 0x102035b

    #@d6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@d9
    move-result-object v2

    #@da
    check-cast v2, Landroid/widget/TextView;

    #@dc
    iput-object v2, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    #@de
    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    iput-object v2, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@e5
    .line 308
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
    .line 310
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    #@f5
    .line 258
    return-void

    #@f6
    :cond_7
    move v2, v4

    #@f7
    .line 274
    goto/16 :goto_0

    #@f9
    :cond_8
    move v3, v4

    #@fa
    .line 282
    goto :goto_1

    #@fb
    .line 288
    :cond_9
    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    #@fd
    if-nez v2, :cond_3

    #@ff
    .line 289
    iget-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@101
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@104
    goto :goto_2

    #@105
    .line 292
    :cond_a
    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    #@107
    if-nez v2, :cond_4

    #@109
    .line 293
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
    .line 132
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
    .line 133
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    #@11
    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    #@13
    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    #@16
    iput-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@18
    .line 134
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@1a
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    #@1c
    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    #@1f
    .line 135
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@21
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    #@24
    .line 136
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@26
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@2c
    .line 137
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@2e
    iget-object v1, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    #@30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@33
    .line 138
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@35
    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    #@38
    .line 139
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@3a
    const v1, 0x106000d

    #@3d
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    #@40
    .line 143
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    #@42
    const/4 v1, 0x3

    #@43
    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    #@46
    .line 145
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusable(Z)V

    #@49
    .line 146
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusableInTouchMode(Z)V

    #@4c
    .line 147
    const/high16 v0, 0x40000

    #@4e
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->setDescendantFocusability(I)V

    #@51
    .line 148
    invoke-virtual {p0}, Landroid/widget/MediaController;->requestFocus()Z

    #@54
    .line 131
    return-void
.end method

.method private initFloatingWindowLayout()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 155
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    #@3
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@6
    iput-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@8
    .line 156
    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@a
    .line 157
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    #@c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@e
    .line 158
    const/4 v1, -0x2

    #@f
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@11
    .line 159
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@13
    .line 160
    const/4 v1, -0x3

    #@14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@16
    .line 161
    const/16 v1, 0x3e8

    #@18
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1a
    .line 162
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1c
    const v2, 0x820020

    #@1f
    or-int/2addr v1, v2

    #@20
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@22
    .line 165
    const/4 v1, 0x0

    #@23
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@25
    .line 166
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@27
    .line 154
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
    .line 676
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 677
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@8
    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    #@a
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@d
    .line 678
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
    .line 681
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 682
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@1d
    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    #@1f
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@22
    .line 683
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@24
    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    #@26
    if-eqz v3, :cond_3

    #@28
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@2b
    .line 675
    :cond_1
    return-void

    #@2c
    :cond_2
    move v0, v2

    #@2d
    .line 678
    goto :goto_0

    #@2e
    :cond_3
    move v1, v2

    #@2f
    .line 683
    goto :goto_1
.end method

.method private setProgress()I
    .locals 10

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 442
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@3
    if-eqz v5, :cond_0

    #@5
    iget-boolean v5, p0, Landroid/widget/MediaController;->mDragging:Z

    #@7
    if-eqz v5, :cond_1

    #@9
    .line 443
    :cond_0
    return v6

    #@a
    .line 445
    :cond_1
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@c
    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    #@f
    move-result v4

    #@10
    .line 446
    .local v4, "position":I
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@12
    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    #@15
    move-result v0

    #@16
    .line 447
    .local v0, "duration":I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@18
    if-eqz v5, :cond_3

    #@1a
    .line 448
    if-lez v0, :cond_2

    #@1c
    .line 450
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
    .line 451
    .local v2, "pos":J
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@25
    long-to-int v6, v2

    #@26
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@29
    .line 453
    .end local v2    # "pos":J
    :cond_2
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@2b
    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    #@2e
    move-result v1

    #@2f
    .line 454
    .local v1, "percent":I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@31
    mul-int/lit8 v6, v1, 0xa

    #@33
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    #@36
    .line 457
    .end local v1    # "percent":I
    :cond_3
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    #@38
    if-eqz v5, :cond_4

    #@3a
    .line 458
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    #@3c
    invoke-direct {p0, v0}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@43
    .line 459
    :cond_4
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    #@45
    if-eqz v5, :cond_5

    #@47
    .line 460
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    #@49
    invoke-direct {p0, v4}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@50
    .line 462
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
    .line 427
    div-int/lit16 v3, p1, 0x3e8

    #@5
    .line 429
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    #@7
    .line 430
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    #@9
    rem-int/lit8 v1, v4, 0x3c

    #@b
    .line 431
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    #@d
    .line 433
    .local v0, "hours":I
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    #@12
    .line 434
    if-lez v0, :cond_0

    #@14
    .line 435
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
    .line 437
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
    .line 172
    const/4 v2, 0x2

    #@3
    new-array v0, v2, [I

    #@5
    .line 173
    .local v0, "anchorPos":[I
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@7
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@a
    .line 177
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
    .line 178
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
    .line 177
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    #@23
    .line 180
    iget-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@25
    .line 181
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@27
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@2a
    move-result v2

    #@2b
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2d
    .line 182
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
    .line 183
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
    .line 171
    return-void
.end method

.method private updatePausePlay()V
    .locals 2

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 547
    :cond_0
    return-void

    #@9
    .line 549
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@b
    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 550
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@13
    const v1, 0x1080023

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    #@19
    .line 551
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@1b
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@20
    .line 545
    :goto_0
    return-void

    #@21
    .line 553
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@23
    const v1, 0x1080024

    #@26
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    #@29
    .line 554
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
    .line 491
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@6
    move-result v0

    #@7
    .line 492
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_3

    #@d
    .line 493
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_2

    #@13
    const/4 v1, 0x1

    #@14
    .line 494
    .local v1, "uniqueDown":Z
    :goto_0
    const/16 v2, 0x4f

    #@16
    if-eq v0, v2, :cond_0

    #@18
    .line 495
    const/16 v2, 0x55

    #@1a
    if-ne v0, v2, :cond_4

    #@1c
    .line 497
    :cond_0
    if-eqz v1, :cond_1

    #@1e
    .line 498
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    #@21
    .line 499
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    #@24
    .line 500
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 501
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@2a
    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    #@2d
    .line 504
    :cond_1
    return v3

    #@2e
    .line 493
    .end local v1    # "uniqueDown":Z
    :cond_2
    const/4 v1, 0x0

    #@2f
    .restart local v1    # "uniqueDown":Z
    goto :goto_0

    #@30
    .line 492
    .end local v1    # "uniqueDown":Z
    :cond_3
    const/4 v1, 0x0

    #@31
    .restart local v1    # "uniqueDown":Z
    goto :goto_0

    #@32
    .line 496
    :cond_4
    const/16 v2, 0x3e

    #@34
    if-eq v0, v2, :cond_0

    #@36
    .line 505
    const/16 v2, 0x7e

    #@38
    if-ne v0, v2, :cond_7

    #@3a
    .line 506
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
    .line 511
    :cond_5
    :goto_1
    return v3

    #@45
    .line 507
    :cond_6
    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@47
    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    #@4a
    .line 508
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@4d
    .line 509
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    #@50
    goto :goto_1

    #@51
    .line 512
    :cond_7
    const/16 v2, 0x56

    #@53
    if-eq v0, v2, :cond_8

    #@55
    .line 513
    const/16 v2, 0x7f

    #@57
    if-ne v0, v2, :cond_a

    #@59
    .line 514
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
    .line 515
    iget-object v2, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@65
    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    #@68
    .line 516
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@6b
    .line 517
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    #@6e
    .line 519
    :cond_9
    return v3

    #@6f
    .line 520
    :cond_a
    const/16 v2, 0x19

    #@71
    if-eq v0, v2, :cond_b

    #@73
    .line 521
    const/16 v2, 0x18

    #@75
    if-ne v0, v2, :cond_c

    #@77
    .line 525
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@7a
    move-result v2

    #@7b
    return v2

    #@7c
    .line 522
    :cond_c
    const/16 v2, 0xa4

    #@7e
    if-eq v0, v2, :cond_b

    #@80
    .line 523
    const/16 v2, 0x1b

    #@82
    if-eq v0, v2, :cond_b

    #@84
    .line 526
    const/4 v2, 0x4

    #@85
    if-eq v0, v2, :cond_d

    #@87
    const/16 v2, 0x52

    #@89
    if-ne v0, v2, :cond_f

    #@8b
    .line 527
    :cond_d
    if-eqz v1, :cond_e

    #@8d
    .line 528
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    #@90
    .line 530
    :cond_e
    return v3

    #@91
    .line 533
    :cond_f
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    #@94
    .line 534
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
    .line 648
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
    .line 393
    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 394
    return-void

    #@5
    .line 396
    :cond_0
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 398
    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    #@b
    const/4 v2, 0x2

    #@c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@f
    .line 399
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    #@11
    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@13
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 403
    :goto_0
    const/4 v1, 0x0

    #@17
    iput-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    #@19
    .line 392
    :cond_1
    return-void

    #@1a
    .line 400
    :catch_0
    move-exception v0

    #@1b
    .line 401
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "MediaController"

    #@1e
    const-string/jumbo v2, "already removed"

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 386
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    #@2
    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    #@0
    .prologue
    .line 250
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
    .line 251
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x1090079

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@15
    .line 253
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@17
    invoke-direct {p0, v1}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    #@1a
    .line 255
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@1c
    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 115
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@6
    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    #@9
    .line 113
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 480
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 469
    :pswitch_1
    const/4 v0, 0x0

    #@a
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    #@d
    goto :goto_0

    #@e
    .line 472
    :pswitch_2
    const/16 v0, 0xbb8

    #@10
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    #@13
    goto :goto_0

    #@14
    .line 475
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    #@17
    goto :goto_0

    #@18
    .line 467
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
    .line 485
    const/16 v0, 0xbb8

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    #@5
    .line 486
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
    .line 225
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 226
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@7
    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@9
    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@c
    .line 228
    :cond_0
    iput-object p1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@e
    .line 229
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 230
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@14
    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    #@16
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@19
    .line 233
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@1b
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@1e
    .line 238
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/MediaController;->removeAllViews()V

    #@21
    .line 239
    invoke-virtual {p0}, Landroid/widget/MediaController;->makeControllerView()Landroid/view/View;

    #@24
    move-result-object v1

    #@25
    .line 240
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/widget/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@28
    .line 224
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
    .line 624
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 625
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@8
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@b
    .line 627
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 628
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@14
    .line 630
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 631
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    #@1a
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@1d
    .line 633
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 634
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
    .line 636
    :cond_3
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    #@2f
    if-eqz v0, :cond_5

    #@31
    .line 637
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
    .line 639
    :cond_5
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@3f
    if-eqz v0, :cond_6

    #@41
    .line 640
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    #@43
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    #@46
    .line 642
    :cond_6
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    #@49
    .line 643
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    #@4c
    .line 623
    return-void

    #@4d
    :cond_7
    move v0, v2

    #@4e
    .line 634
    goto :goto_0
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Landroid/widget/MediaController$MediaPlayerControl;

    #@0
    .prologue
    .line 213
    iput-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    #@2
    .line 214
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@5
    .line 212
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
    .line 688
    iput-object p1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    #@3
    .line 689
    iput-object p2, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    #@5
    .line 690
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/widget/MediaController;->mListenersSet:Z

    #@8
    .line 692
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 693
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    #@f
    .line 695
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 698
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
    .line 687
    :cond_1
    :goto_1
    return-void

    #@20
    .line 696
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@25
    goto :goto_0

    #@26
    .line 699
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
    .line 318
    const/16 v0, 0xbb8

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    #@5
    .line 317
    return-void
.end method

.method public show(I)V
    .locals 5
    .param p1, "timeout"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 361
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    #@3
    if-nez v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 362
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    #@c
    .line 363
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 364
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    #@12
    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    #@15
    .line 366
    :cond_0
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    #@18
    .line 367
    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    #@1b
    .line 368
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    #@1d
    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    #@1f
    iget-object v3, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    #@21
    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@24
    .line 369
    iput-boolean v4, p0, Landroid/widget/MediaController;->mShowing:Z

    #@26
    .line 371
    :cond_1
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    #@29
    .line 376
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    #@2b
    const/4 v2, 0x2

    #@2c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@2f
    .line 378
    if-eqz p1, :cond_2

    #@31
    iget-object v1, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@33
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3

    #@39
    .line 360
    :cond_2
    :goto_0
    return-void

    #@3a
    .line 379
    :cond_3
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    #@3c
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@3f
    .line 380
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    #@41
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@44
    move-result-object v0

    #@45
    .line 381
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    #@47
    int-to-long v2, p1

    #@48
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@4b
    goto :goto_0
.end method
