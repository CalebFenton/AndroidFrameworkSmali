.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN$1;,
        Landroid/widget/Toast$TN$2;
    }
.end annotation


# static fields
.field static final LONG_DURATION_TIMEOUT:J = 0x3e8L

.field static final SHORT_DURATION_TIMEOUT:J = 0x1388L


# instance fields
.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method static synthetic -get0(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@2
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    .line 364
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    #@4
    .line 331
    new-instance v1, Landroid/widget/Toast$TN$1;

    #@6
    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    #@9
    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    #@b
    .line 340
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    #@d
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@10
    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@12
    .line 341
    new-instance v1, Landroid/widget/Toast$TN$2;

    #@14
    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    #@17
    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    #@19
    .line 367
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@1b
    .line 368
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@1d
    .line 369
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@1f
    .line 370
    const/4 v1, -0x3

    #@20
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@22
    .line 371
    const v1, 0x1030004

    #@25
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@27
    .line 372
    const/16 v1, 0x7d5

    #@29
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2b
    .line 373
    const-string/jumbo v1, "Toast"

    #@2e
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@31
    .line 374
    const/16 v1, 0x98

    #@33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@35
    .line 364
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    #@0
    .prologue
    .line 441
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@9
    move-result-object v0

    #@a
    .line 442
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 443
    return-void

    #@11
    .line 448
    :cond_0
    const/16 v2, 0x40

    #@13
    .line 447
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@16
    move-result-object v1

    #@17
    .line 449
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@22
    .line 450
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@24
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@2f
    .line 451
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@31
    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@34
    .line 452
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@37
    .line 439
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 457
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 461
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 463
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    #@f
    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@11
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@14
    .line 466
    :cond_0
    iput-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@16
    .line 455
    :cond_1
    return-void
.end method

.method public handleShow(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    #@2
    .line 400
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@4
    iget-object v5, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    #@6
    if-eq v4, v5, :cond_4

    #@8
    .line 402
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    #@b
    .line 403
    iget-object v4, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    #@d
    iput-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@f
    .line 404
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@11
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@18
    move-result-object v1

    #@19
    .line 405
    .local v1, "context":Landroid/content/Context;
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@1b
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 406
    .local v3, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    #@25
    .line 407
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@27
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v1

    #@2b
    .line 409
    :cond_0
    const-string/jumbo v4, "window"

    #@2e
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Landroid/view/WindowManager;

    #@34
    iput-object v4, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    #@36
    .line 412
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@38
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@43
    move-result-object v0

    #@44
    .line 413
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, p0, Landroid/widget/Toast$TN;->mGravity:I

    #@46
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@49
    move-result v5

    #@4a
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@4d
    move-result v2

    #@4e
    .line 414
    .local v2, "gravity":I
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@50
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@52
    .line 415
    and-int/lit8 v4, v2, 0x7

    #@54
    const/4 v5, 0x7

    #@55
    if-ne v4, v5, :cond_1

    #@57
    .line 416
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@59
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@5b
    .line 418
    :cond_1
    and-int/lit8 v4, v2, 0x70

    #@5d
    const/16 v5, 0x70

    #@5f
    if-ne v4, v5, :cond_2

    #@61
    .line 419
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@63
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@65
    .line 421
    :cond_2
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@67
    iget v5, p0, Landroid/widget/Toast$TN;->mX:I

    #@69
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    #@6b
    .line 422
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@6d
    iget v5, p0, Landroid/widget/Toast$TN;->mY:I

    #@6f
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    #@71
    .line 423
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@73
    iget v5, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    #@75
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@77
    .line 424
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@79
    iget v5, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    #@7b
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@7d
    .line 425
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@7f
    iput-object v3, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@81
    .line 426
    iget-object v6, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@83
    iget v4, p0, Landroid/widget/Toast$TN;->mDuration:I

    #@85
    .line 427
    const/4 v5, 0x1

    #@86
    .line 426
    if-ne v4, v5, :cond_5

    #@88
    .line 427
    const-wide/16 v4, 0x3e8

    #@8a
    .line 426
    :goto_0
    iput-wide v4, v6, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@8c
    .line 428
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@8e
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@90
    .line 429
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@92
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@95
    move-result-object v4

    #@96
    if-eqz v4, :cond_3

    #@98
    .line 431
    iget-object v4, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    #@9a
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@9c
    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@9f
    .line 434
    :cond_3
    iget-object v4, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    #@a1
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@a3
    iget-object v6, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@a5
    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@a8
    .line 435
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    #@ab
    .line 397
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "gravity":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    return-void

    #@ac
    .line 427
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "gravity":I
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_5
    const-wide/16 v4, 0x1388

    #@ae
    goto :goto_0
.end method

.method public hide()V
    .locals 2

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 392
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 383
    return-void
.end method
