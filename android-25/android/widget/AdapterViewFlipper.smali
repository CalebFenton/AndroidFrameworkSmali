.class public Landroid/widget/AdapterViewFlipper;
.super Landroid/widget/AdapterViewAnimator;
.source "AdapterViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewFlipper$1;,
        Landroid/widget/AdapterViewFlipper$2;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x2710

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private mAdvancedByHost:Z

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mFlipRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Landroid/widget/AdapterViewFlipper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/AdapterViewFlipper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/AdapterViewFlipper;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/AdapterViewFlipper;Z)V
    .locals 0
    .param p1, "flipNow"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    #@4
    .line 45
    const/16 v0, 0x2710

    #@6
    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@8
    .line 46
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@a
    .line 48
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@c
    .line 49
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@e
    .line 50
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@10
    .line 51
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    #@13
    .line 52
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    #@15
    .line 83
    new-instance v0, Landroid/widget/AdapterViewFlipper$1;

    #@17
    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    #@1a
    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 276
    new-instance v0, Landroid/widget/AdapterViewFlipper$2;

    #@1e
    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    #@21
    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@23
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/16 v4, 0x2710

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 45
    iput v4, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@9
    .line 46
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@b
    .line 48
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@d
    .line 49
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@f
    .line 50
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@11
    .line 51
    iput-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    #@13
    .line 52
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    #@15
    .line 83
    new-instance v1, Landroid/widget/AdapterViewFlipper$1;

    #@17
    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    #@1a
    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 276
    new-instance v1, Landroid/widget/AdapterViewFlipper$2;

    #@1e
    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    #@21
    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@23
    .line 71
    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    #@25
    .line 70
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@28
    move-result-object v0

    #@29
    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@2f
    .line 74
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@32
    move-result v1

    #@33
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@35
    .line 78
    iput-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    #@37
    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3a
    .line 67
    return-void
.end method

.method private updateRunning()V
    .locals 1

    #@0
    .prologue
    .line 224
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    #@4
    .line 221
    return-void
.end method

.method private updateRunning(Z)V
    .locals 4
    .param p1, "flipNow"    # Z

    #@0
    .prologue
    .line 236
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    #@2
    if-nez v1, :cond_2

    #@4
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@6
    if-eqz v1, :cond_2

    #@8
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@a
    if-eqz v1, :cond_2

    #@c
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 237
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    #@12
    if-eqz v1, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    .line 238
    .local v0, "running":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@17
    if-eq v0, v1, :cond_0

    #@19
    .line 239
    if-eqz v0, :cond_3

    #@1b
    .line 240
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    #@1d
    invoke-virtual {p0, v1, p1}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    #@20
    .line 241
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@22
    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@24
    int-to-long v2, v2

    #@25
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@28
    .line 245
    :goto_1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@2a
    .line 235
    :cond_0
    return-void

    #@2b
    .line 237
    .end local v0    # "running":Z
    :cond_1
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "running":Z
    goto :goto_0

    #@2d
    .line 236
    .end local v0    # "running":Z
    :cond_2
    const/4 v0, 0x0

    #@2e
    .restart local v0    # "running":Z
    goto :goto_0

    #@2f
    .line 243
    :cond_3
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@31
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@34
    goto :goto_1
.end method


# virtual methods
.method public fyiWillBeAdvancedByHostKThx()V
    .locals 1

    #@0
    .prologue
    .line 293
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    #@3
    .line 294
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    #@7
    .line 292
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 299
    const-class v0, Landroid/widget/AdapterViewFlipper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFlipInterval()I
    .locals 1

    #@0
    .prologue
    .line 155
    iget v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@2
    return v0
.end method

.method public isAutoStart()Z
    .locals 1

    #@0
    .prologue
    .line 273
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@2
    return v0
.end method

.method public isFlipping()Z
    .locals 1

    #@0
    .prologue
    .line 257
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    #@0
    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onAttachedToWindow()V

    #@3
    .line 102
    new-instance v3, Landroid/content/IntentFilter;

    #@5
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@8
    .line 103
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    #@b
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@e
    .line 104
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    #@11
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@1d
    move-result-object v2

    #@1e
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    #@21
    move-result-object v5

    #@22
    const/4 v4, 0x0

    #@23
    .line 113
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@26
    .line 117
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 119
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->startFlipping()V

    #@2d
    .line 98
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onDetachedFromWindow()V

    #@3
    .line 126
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@6
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 129
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    #@12
    .line 124
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 134
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onWindowVisibilityChanged(I)V

    #@4
    .line 135
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@9
    .line 136
    invoke-direct {p0, v1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    #@c
    .line 133
    return-void

    #@d
    :cond_0
    move v0, v1

    #@e
    .line 135
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    #@0
    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    #@3
    .line 142
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    #@6
    .line 140
    return-void
.end method

.method public setAutoStart(Z)V
    .locals 0
    .param p1, "autoStart"    # Z

    #@0
    .prologue
    .line 265
    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@2
    .line 264
    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0
    .param p1, "flipInterval"    # I

    #@0
    .prologue
    .line 168
    iput p1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@2
    .line 167
    return-void
.end method

.method public showNext()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 196
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@9
    .line 197
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@b
    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@d
    int-to-long v2, v1

    #@e
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@11
    .line 199
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    #@14
    .line 192
    return-void
.end method

.method public showPrevious()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 211
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@9
    .line 212
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@b
    iget v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@d
    int-to-long v2, v1

    #@e
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@11
    .line 214
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    #@14
    .line 207
    return-void
.end method

.method public startFlipping()V
    .locals 1

    #@0
    .prologue
    .line 175
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@3
    .line 176
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    #@6
    .line 174
    return-void
.end method

.method public stopFlipping()V
    .locals 1

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@3
    .line 184
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    #@6
    .line 182
    return-void
.end method
