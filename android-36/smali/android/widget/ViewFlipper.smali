.class public Landroid/widget/ViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "ViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INTERVAL:I = 0xbb8

.field private static final greylist-max-o LOGD:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private greylist-max-o mAutoStart:Z

.field private greylist-max-o mFlipInterval:I

.field private final greylist-max-o mFlipRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlipInterval(Landroid/widget/ViewFlipper;)I
    .registers 1

    iget p0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlipRunnable(Landroid/widget/ViewFlipper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Landroid/widget/ViewFlipper;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 48
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 49
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 50
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 194
    new-instance v0, Landroid/widget/ViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 48
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 49
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 50
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 194
    new-instance v2, Landroid/widget/ViewFlipper$1;

    invoke-direct {v2, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v2, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 59
    sget-object v2, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 61
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 63
    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 65
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method private greylist-max-o updateRunning()V
    .registers 2

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    .line 141
    return-void
.end method

.method private greylist-max-r updateRunning(Z)V
    .registers 6
    .param p1, "flipNow"    # Z

    .line 153
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 154
    .local v0, "running":Z
    :goto_b
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    if-eq v0, v1, :cond_26

    .line 155
    if-eqz v0, :cond_1f

    .line 156
    iget v1, p0, Landroid/widget/ViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/ViewFlipper;->showOnly(IZ)V

    .line 157
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_24

    .line 159
    :cond_1f
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    :goto_24
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    .line 167
    :cond_26
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 132
    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlipInterval()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return v0
.end method

.method public whitelist isAutoStart()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public whitelist isFlipping()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 70
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    .line 72
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    if-eqz v0, :cond_a

    .line 74
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 76
    :cond_a
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 80
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 82
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 83
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 87
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    .line 88
    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    .line 89
    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    .line 90
    return-void
.end method

.method public whitelist setAutoStart(Z)V
    .registers 2
    .param p1, "autoStart"    # Z

    .line 182
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    .line 183
    return-void
.end method

.method public whitelist setFlipInterval(I)V
    .registers 2
    .param p1, "milliseconds"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 100
    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 101
    return-void
.end method

.method public whitelist startFlipping()V
    .registers 2

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 119
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 120
    return-void
.end method

.method public whitelist stopFlipping()V
    .registers 2

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    .line 127
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    .line 128
    return-void
.end method
