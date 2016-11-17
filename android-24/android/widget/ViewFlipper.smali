.class public Landroid/widget/ViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "ViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ViewFlipper$1;,
        Landroid/widget/ViewFlipper$2;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0xbb8

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mFlipRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Landroid/widget/ViewFlipper;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/ViewFlipper;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ViewFlipper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/ViewFlipper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/ViewFlipper;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/ViewFlipper;Z)V
    .locals 0
    .param p1, "flipNow"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

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
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    #@4
    .line 44
    const/16 v0, 0xbb8

    #@6
    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    #@8
    .line 45
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    #@a
    .line 47
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    #@c
    .line 48
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    #@e
    .line 49
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    #@10
    .line 50
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    #@13
    .line 68
    new-instance v0, Landroid/widget/ViewFlipper$1;

    #@15
    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    #@18
    iput-object v0, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    .line 211
    new-instance v0, Landroid/widget/ViewFlipper$2;

    #@1c
    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    #@1f
    iput-object v0, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@21
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/16 v4, 0xbb8

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@7
    .line 44
    iput v4, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    #@9
    .line 45
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    #@b
    .line 47
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    #@d
    .line 48
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    #@f
    .line 49
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    #@11
    .line 50
    iput-boolean v3, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    #@13
    .line 68
    new-instance v1, Landroid/widget/ViewFlipper$1;

    #@15
    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    #@18
    iput-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    .line 211
    new-instance v1, Landroid/widget/ViewFlipper$2;

    #@1c
    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    #@1f
    iput-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@21
    .line 60
    sget-object v1, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    #@23
    .line 59
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@26
    move-result-object v0

    #@27
    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    #@2d
    .line 63
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@30
    move-result v1

    #@31
    iput-boolean v1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    #@33
    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@36
    .line 56
    return-void
.end method

.method private updateRunning()V
    .locals 1

    #@0
    .prologue
    .line 160
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    #@4
    .line 159
    return-void
.end method

.method private updateRunning(Z)V
    .locals 4
    .param p1, "flipNow"    # Z

    #@0
    .prologue
    .line 172
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    #@6
    if-eqz v1, :cond_1

    #@8
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mUserPresent:Z

    #@a
    .line 173
    :goto_0
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 174
    if-eqz v0, :cond_2

    #@10
    .line 175
    iget v1, p0, Landroid/widget/ViewFlipper;->mWhichChild:I

    #@12
    invoke-virtual {p0, v1, p1}, Landroid/widget/ViewFlipper;->showOnly(IZ)V

    #@15
    .line 176
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@17
    iget v2, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    #@19
    int-to-long v2, v2

    #@1a
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1d
    .line 180
    :goto_1
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mRunning:Z

    #@1f
    .line 171
    :cond_0
    return-void

    #@20
    .line 172
    :cond_1
    const/4 v0, 0x0

    #@21
    .local v0, "running":Z
    goto :goto_0

    #@22
    .line 178
    .end local v0    # "running":Z
    :cond_2
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mFlipRunnable:Ljava/lang/Runnable;

    #@24
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@27
    goto :goto_1
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 152
    const-class v0, Landroid/widget/ViewFlipper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isAutoStart()Z
    .locals 1

    #@0
    .prologue
    .line 208
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    #@2
    return v0
.end method

.method public isFlipping()Z
    .locals 1

    #@0
    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    #@0
    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    #@3
    .line 87
    new-instance v3, Landroid/content/IntentFilter;

    #@5
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@8
    .line 88
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    #@b
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@e
    .line 89
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    #@11
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14
    .line 98
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@1d
    move-result-object v2

    #@1e
    .line 99
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getHandler()Landroid/os/Handler;

    #@21
    move-result-object v5

    #@22
    const/4 v4, 0x0

    #@23
    .line 98
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@26
    .line 101
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 103
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->startFlipping()V

    #@2d
    .line 83
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    #@3
    .line 110
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    #@6
    .line 112
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 113
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    #@12
    .line 108
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 118
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    #@4
    .line 119
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mVisible:Z

    #@9
    .line 120
    invoke-direct {p0, v1}, Landroid/widget/ViewFlipper;->updateRunning(Z)V

    #@c
    .line 117
    return-void

    #@d
    :cond_0
    move v0, v1

    #@e
    .line 119
    goto :goto_0
.end method

.method public setAutoStart(Z)V
    .locals 0
    .param p1, "autoStart"    # Z

    #@0
    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/widget/ViewFlipper;->mAutoStart:Z

    #@2
    .line 199
    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0
    .param p1, "milliseconds"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 131
    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    #@2
    .line 130
    return-void
.end method

.method public startFlipping()V
    .locals 1

    #@0
    .prologue
    .line 138
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    #@3
    .line 139
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    #@6
    .line 137
    return-void
.end method

.method public stopFlipping()V
    .locals 1

    #@0
    .prologue
    .line 146
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mStarted:Z

    #@3
    .line 147
    invoke-direct {p0}, Landroid/widget/ViewFlipper;->updateRunning()V

    #@6
    .line 145
    return-void
.end method
