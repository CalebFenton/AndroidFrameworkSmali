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
.field private final FLIP_MSG:I

.field private mAdvancedByHost:Z

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

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
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    #@5
    .line 46
    const/16 v0, 0x2710

    #@7
    iput v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@9
    .line 47
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@b
    .line 49
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@d
    .line 50
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@f
    .line 51
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@11
    .line 52
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    #@13
    .line 53
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    #@15
    .line 84
    new-instance v0, Landroid/widget/AdapterViewFlipper$1;

    #@17
    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    #@1a
    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 280
    iput v2, p0, Landroid/widget/AdapterViewFlipper;->FLIP_MSG:I

    #@1e
    .line 282
    new-instance v0, Landroid/widget/AdapterViewFlipper$2;

    #@20
    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    #@23
    iput-object v0, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@25
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 63
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
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 46
    iput v4, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@9
    .line 47
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@b
    .line 49
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@d
    .line 50
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@f
    .line 51
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@11
    .line 52
    iput-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    #@13
    .line 53
    iput-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    #@15
    .line 84
    new-instance v1, Landroid/widget/AdapterViewFlipper$1;

    #@17
    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    #@1a
    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 280
    iput v3, p0, Landroid/widget/AdapterViewFlipper;->FLIP_MSG:I

    #@1e
    .line 282
    new-instance v1, Landroid/widget/AdapterViewFlipper$2;

    #@20
    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    #@23
    iput-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@25
    .line 72
    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    #@27
    .line 71
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2a
    move-result-object v0

    #@2b
    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@31
    .line 75
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@34
    move-result v1

    #@35
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@37
    .line 79
    iput-boolean v3, p0, Landroid/widget/AdapterViewFlipper;->mLoopViews:Z

    #@39
    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3c
    .line 68
    return-void
.end method

.method private updateRunning()V
    .locals 1

    #@0
    .prologue
    .line 227
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    #@4
    .line 224
    return-void
.end method

.method private updateRunning(Z)V
    .locals 6
    .param p1, "flipNow"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 239
    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    #@3
    if-nez v2, :cond_2

    #@5
    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@7
    if-eqz v2, :cond_2

    #@9
    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@b
    if-eqz v2, :cond_2

    #@d
    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mUserPresent:Z

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 240
    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mAdapter:Landroid/widget/Adapter;

    #@13
    if-eqz v2, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    .line 241
    .local v1, "running":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@18
    if-eq v1, v2, :cond_0

    #@1a
    .line 242
    if-eqz v1, :cond_3

    #@1c
    .line 243
    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mWhichChild:I

    #@1e
    invoke-virtual {p0, v2, p1}, Landroid/widget/AdapterViewFlipper;->showOnly(IZ)V

    #@21
    .line 244
    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@23
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@26
    move-result-object v0

    #@27
    .line 245
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@29
    iget v3, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@2b
    int-to-long v4, v3

    #@2c
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2f
    .line 249
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iput-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@31
    .line 238
    :cond_0
    return-void

    #@32
    .line 240
    .end local v1    # "running":Z
    :cond_1
    const/4 v1, 0x0

    #@33
    .restart local v1    # "running":Z
    goto :goto_0

    #@34
    .line 239
    .end local v1    # "running":Z
    :cond_2
    const/4 v1, 0x0

    #@35
    .restart local v1    # "running":Z
    goto :goto_0

    #@36
    .line 247
    :cond_3
    iget-object v2, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@38
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@3b
    goto :goto_1
.end method


# virtual methods
.method public fyiWillBeAdvancedByHostKThx()V
    .locals 1

    #@0
    .prologue
    .line 301
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAdvancedByHost:Z

    #@3
    .line 302
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    #@7
    .line 300
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 307
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
    .line 156
    iget v0, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@2
    return v0
.end method

.method public isAutoStart()Z
    .locals 1

    #@0
    .prologue
    .line 277
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@2
    return v0
.end method

.method public isFlipping()Z
    .locals 1

    #@0
    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    #@0
    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onAttachedToWindow()V

    #@3
    .line 103
    new-instance v3, Landroid/content/IntentFilter;

    #@5
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@8
    .line 104
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    #@b
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@e
    .line 105
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    #@11
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14
    .line 114
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@1d
    move-result-object v2

    #@1e
    .line 115
    iget-object v5, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@20
    const/4 v4, 0x0

    #@21
    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@24
    .line 118
    iget-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 120
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->startFlipping()V

    #@2b
    .line 99
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onDetachedFromWindow()V

    #@3
    .line 127
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@6
    .line 129
    invoke-virtual {p0}, Landroid/widget/AdapterViewFlipper;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 130
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    #@12
    .line 125
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 135
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onWindowVisibilityChanged(I)V

    #@4
    .line 136
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mVisible:Z

    #@9
    .line 137
    invoke-direct {p0, v1}, Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V

    #@c
    .line 134
    return-void

    #@d
    :cond_0
    move v0, v1

    #@e
    .line 136
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    #@0
    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    #@3
    .line 143
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    #@6
    .line 141
    return-void
.end method

.method public setAutoStart(Z)V
    .locals 0
    .param p1, "autoStart"    # Z

    #@0
    .prologue
    .line 269
    iput-boolean p1, p0, Landroid/widget/AdapterViewFlipper;->mAutoStart:Z

    #@2
    .line 268
    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0
    .param p1, "flipInterval"    # I

    #@0
    .prologue
    .line 169
    iput p1, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@2
    .line 168
    return-void
.end method

.method public showNext()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 196
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 197
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@a
    .line 198
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    .line 199
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@12
    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@14
    int-to-long v2, v2

    #@15
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@18
    .line 201
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    #@1b
    .line 193
    return-void
.end method

.method public showPrevious()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 212
    iget-boolean v1, p0, Landroid/widget/AdapterViewFlipper;->mRunning:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 213
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@a
    .line 214
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    .line 215
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper;->mHandler:Landroid/os/Handler;

    #@12
    iget v2, p0, Landroid/widget/AdapterViewFlipper;->mFlipInterval:I

    #@14
    int-to-long v2, v2

    #@15
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@18
    .line 217
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    #@1b
    .line 209
    return-void
.end method

.method public startFlipping()V
    .locals 1

    #@0
    .prologue
    .line 176
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@3
    .line 177
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    #@6
    .line 175
    return-void
.end method

.method public stopFlipping()V
    .locals 1

    #@0
    .prologue
    .line 184
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/AdapterViewFlipper;->mStarted:Z

    #@3
    .line 185
    invoke-direct {p0}, Landroid/widget/AdapterViewFlipper;->updateRunning()V

    #@6
    .line 183
    return-void
.end method
