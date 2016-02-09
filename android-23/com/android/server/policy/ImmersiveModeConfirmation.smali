.class public Lcom/android/server/policy/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$H;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$1;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"


# instance fields
.field private mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mConfirmed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private final mShowDelayMs:J

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/ImmersiveModeConfirmation;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/ImmersiveModeConfirmation;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->handleHide()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->handleShow()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->saveSetting()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 327
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    #@a
    .line 71
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    #@c
    .line 72
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Lcom/android/server/policy/ImmersiveModeConfirmation$H;)V

    #@12
    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    #@14
    .line 73
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    #@17
    move-result-wide v0

    #@18
    const-wide/16 v2, 0x3

    #@1a
    mul-long/2addr v0, v2

    #@1b
    iput-wide v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mShowDelayMs:J

    #@1d
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v0

    #@21
    .line 75
    const v1, 0x10e0089

    #@24
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@27
    move-result v0

    #@28
    int-to-long v0, v0

    #@29
    iput-wide v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    #@2b
    .line 77
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    #@2d
    const-string/jumbo v1, "window"

    #@30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    .line 76
    check-cast v0, Landroid/view/WindowManager;

    #@36
    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    #@38
    .line 70
    return-void
.end method

.method private getNavBarExitDuration()J
    .locals 4

    #@0
    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    #@2
    const v2, 0x10a0018

    #@5
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@8
    move-result-object v0

    #@9
    .line 82
    .local v0, "exit":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    #@e
    move-result-wide v2

    #@f
    :goto_0
    return-wide v2

    #@10
    :cond_0
    const-wide/16 v2, 0x0

    #@12
    goto :goto_0
.end method

.method private handleHide()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 152
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 154
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    #@7
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@9
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@c
    .line 155
    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@e
    .line 151
    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 4

    #@0
    .prologue
    .line 315
    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@2
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    #@4
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    #@6
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    #@9
    iput-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@b
    .line 318
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@d
    .line 319
    const/16 v2, 0x300

    #@f
    .line 318
    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    #@12
    .line 323
    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    #@15
    move-result-object v0

    #@16
    .line 324
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    #@18
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@1a
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    .line 312
    return-void
.end method

.method private saveSetting()V
    .locals 5

    #@0
    .prologue
    .line 104
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v1, "confirmed"

    #@7
    .line 105
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v2

    #@d
    .line 106
    const-string/jumbo v3, "immersive_mode_confirmations"

    #@10
    .line 108
    const/4 v4, -0x2

    #@11
    .line 105
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 101
    :goto_1
    return-void

    #@15
    .line 104
    :cond_0
    const/4 v1, 0x0

    #@16
    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    #@17
    .line 110
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@18
    .line 111
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ImmersiveModeConfirmation"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Error saving confirmations, mConfirmed="

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    iget-boolean v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    goto :goto_1
.end method


# virtual methods
.method public confirmCurrentPrompt()V
    .locals 2

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 147
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    #@6
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    #@b
    .line 144
    :cond_0
    return-void
.end method

.method public getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    #@0
    .prologue
    .line 177
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@2
    .line 178
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 179
    const v2, 0x1050088

    #@b
    .line 178
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@e
    move-result v1

    #@f
    .line 180
    const/4 v2, -0x2

    #@10
    .line 181
    const/16 v3, 0x31

    #@12
    .line 177
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@15
    return-object v0
.end method

.method public getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 160
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@3
    .line 163
    const/16 v3, 0x7de

    #@5
    .line 164
    const v4, 0x1000108

    #@8
    .line 169
    const/4 v5, -0x3

    #@9
    move v2, v1

    #@a
    .line 160
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    #@d
    .line 170
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@f
    or-int/lit8 v1, v1, 0x10

    #@11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@13
    .line 171
    const-string/jumbo v1, "ImmersiveModeConfirmation"

    #@16
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@19
    .line 172
    const v1, 0x10302ef

    #@1c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@1e
    .line 173
    return-object v0
.end method

.method public immersiveModeChanged(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isImmersiveMode"    # Z
    .param p3, "userSetupComplete"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 117
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    #@3
    invoke-virtual {v1, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    #@6
    .line 118
    if-eqz p2, :cond_2

    #@8
    .line 119
    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    .line 122
    .local v0, "disabled":Z
    if-nez v0, :cond_0

    #@e
    iget-boolean v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 116
    .end local v0    # "disabled":Z
    :cond_0
    :goto_0
    return-void

    #@13
    .line 122
    .restart local v0    # "disabled":Z
    :cond_1
    if-eqz p3, :cond_0

    #@15
    .line 123
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    #@17
    iget-wide v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mShowDelayMs:J

    #@19
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessageDelayed(IJ)Z

    #@1c
    goto :goto_0

    #@1d
    .line 126
    .end local v0    # "disabled":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    #@1f
    const/4 v2, 0x2

    #@20
    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    #@23
    goto :goto_0
.end method

.method public loadSetting(I)V
    .locals 5
    .param p1, "currentUserId"    # I

    #@0
    .prologue
    .line 86
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    #@3
    .line 87
    iput p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mCurrentUserId:I

    #@5
    .line 89
    const/4 v1, 0x0

    #@6
    .line 91
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v2

    #@c
    .line 92
    const-string/jumbo v3, "immersive_mode_confirmations"

    #@f
    .line 93
    const/4 v4, -0x2

    #@10
    .line 91
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 94
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "confirmed"

    #@17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    iput-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 85
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    #@1e
    .line 96
    :catch_0
    move-exception v0

    #@1f
    .line 97
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ImmersiveModeConfirmation"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "Error loading confirmations, value="

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0
.end method

.method public onPowerKeyDown(ZJZ)Z
    .locals 6
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    if-nez p1, :cond_1

    #@3
    iget-wide v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    #@5
    sub-long v2, p2, v2

    #@7
    iget-wide v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    #@9
    cmp-long v1, v2, v4

    #@b
    if-gez v1, :cond_1

    #@d
    .line 133
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0

    #@13
    .line 135
    :cond_1
    if-eqz p1, :cond_2

    #@15
    if-eqz p4, :cond_2

    #@17
    .line 137
    iput-wide p2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    #@19
    .line 141
    :goto_0
    return v0

    #@1a
    .line 139
    :cond_2
    const-wide/16 v2, 0x0

    #@1c
    iput-wide v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    #@1e
    goto :goto_0
.end method
