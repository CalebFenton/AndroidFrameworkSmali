.class public Landroid/widget/AdapterViewFlipper;
.super Landroid/widget/AdapterViewAnimator;
.source "AdapterViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INTERVAL:I = 0x2710

.field private static final greylist-max-o LOGD:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private greylist-max-o mAdvancedByHost:Z

.field private greylist-max-o mAutoStart:Z

.field private greylist-max-o mFlipInterval:I

.field private final greylist-max-o mFlipRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Landroid/widget/AdapterViewFlipper;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    .line 42
    const/16 v0, 0x2710

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 45
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 46
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 47
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 48
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 241
    new-instance v0, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const/16 v0, 0x2710

    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 45
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 46
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 47
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 48
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 241
    new-instance v2, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v2, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    .line 66
    sget-object v2, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 68
    .local v7, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v4, "context":Landroid/content/Context;
    .local v6, "attrs":Landroid/util/AttributeSet;
    .local v8, "defStyleAttr":I
    .local v9, "defStyleRes":I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/AdapterViewFlipper;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 70
    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v3, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 72
    const/4 p1, 0x1

    invoke-virtual {v7, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v3, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 76
    iput-boolean p1, v3, Landroid/widget/AdapterViewFlipper;->mLoopViews:Z

    .line 78
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method

.method private greylist-max-o updateRunning()V
    .registers 2

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 191
    return-void
.end method

.method private greylist-max-o updateRunning(Z)V
    .registers 6
    .param p1, "flipNow"    # Z

    .line 202
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 203
    .local v0, "running":Z
    :goto_13
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eq v0, v1, :cond_2e

    .line 204
    if-eqz v0, :cond_27

    .line 205
    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/AdapterViewFlipper;->showOnly(IZ)V

    .line 206
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c

    .line 208
    :cond_27
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 210
    :goto_2c
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    .line 216
    :cond_2e
    return-void
.end method


# virtual methods
.method public whitelist fyiWillBeAdvancedByHostKThx()V
    .registers 2

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 260
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 264
    const-class v0, Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlipInterval()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    return v0
.end method

.method public whitelist isAutoStart()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public whitelist isFlipping()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 83
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onAttachedToWindow()V

    .line 85
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    if-eqz v0, :cond_a

    .line 87
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->startFlipping()V

    .line 89
    :cond_a
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 93
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onDetachedFromWindow()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 95
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 96
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 100
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onWindowVisibilityChanged(I)V

    .line 101
    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    .line 102
    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    .line 103
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .line 107
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 108
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 109
    return-void
.end method

.method public whitelist setAutoStart(Z)V
    .registers 2
    .param p1, "autoStart"    # Z

    .line 230
    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    .line 231
    return-void
.end method

.method public whitelist setFlipInterval(I)V
    .registers 2
    .param p1, "flipInterval"    # I

    .line 134
    iput p1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    .line 135
    return-void
.end method

.method public whitelist showNext()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 161
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v0, :cond_11

    .line 162
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    :cond_11
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 166
    return-void
.end method

.method public whitelist showPrevious()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 176
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    if-eqz v0, :cond_11

    .line 177
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 178
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AdapterViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    :cond_11
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    .line 181
    return-void
.end method

.method public whitelist startFlipping()V
    .registers 2

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 142
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 143
    return-void
.end method

.method public whitelist stopFlipping()V
    .registers 2

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    .line 150
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    .line 151
    return-void
.end method
