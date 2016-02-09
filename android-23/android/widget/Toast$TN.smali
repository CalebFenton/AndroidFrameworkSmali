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


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

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
    .line 358
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    #@4
    .line 328
    new-instance v1, Landroid/widget/Toast$TN$1;

    #@6
    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    #@9
    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    #@b
    .line 335
    new-instance v1, Landroid/widget/Toast$TN$2;

    #@d
    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    #@10
    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    #@12
    .line 344
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    #@14
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@17
    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@19
    .line 345
    new-instance v1, Landroid/os/Handler;

    #@1b
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@1e
    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    #@20
    .line 361
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@22
    .line 362
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@24
    .line 363
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@26
    .line 364
    const/4 v1, -0x3

    #@27
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@29
    .line 365
    const v1, 0x1030004

    #@2c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@2e
    .line 366
    const/16 v1, 0x7d5

    #@30
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@32
    .line 367
    const-string/jumbo v1, "Toast"

    #@35
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@38
    .line 368
    const/16 v1, 0x98

    #@3a
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3c
    .line 358
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    #@0
    .prologue
    .line 432
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
    .line 433
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 434
    return-void

    #@11
    .line 439
    :cond_0
    const/16 v2, 0x40

    #@13
    .line 438
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@16
    move-result-object v1

    #@17
    .line 440
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
    .line 441
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
    .line 442
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@31
    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@34
    .line 443
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@37
    .line 430
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 448
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 452
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 454
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    #@f
    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@11
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@14
    .line 457
    :cond_0
    iput-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@16
    .line 446
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 7

    #@0
    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    #@2
    .line 394
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@4
    iget-object v5, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    #@6
    if-eq v4, v5, :cond_4

    #@8
    .line 396
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    #@b
    .line 397
    iget-object v4, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    #@d
    iput-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@f
    .line 398
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
    .line 399
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
    .line 400
    .local v3, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    #@25
    .line 401
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@27
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v1

    #@2b
    .line 403
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
    .line 406
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
    .line 407
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
    .line 408
    .local v2, "gravity":I
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@50
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@52
    .line 409
    and-int/lit8 v4, v2, 0x7

    #@54
    const/4 v5, 0x7

    #@55
    if-ne v4, v5, :cond_1

    #@57
    .line 410
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@59
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@5b
    .line 412
    :cond_1
    and-int/lit8 v4, v2, 0x70

    #@5d
    const/16 v5, 0x70

    #@5f
    if-ne v4, v5, :cond_2

    #@61
    .line 413
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@63
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@65
    .line 415
    :cond_2
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@67
    iget v5, p0, Landroid/widget/Toast$TN;->mX:I

    #@69
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    #@6b
    .line 416
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@6d
    iget v5, p0, Landroid/widget/Toast$TN;->mY:I

    #@6f
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    #@71
    .line 417
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@73
    iget v5, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    #@75
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@77
    .line 418
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@79
    iget v5, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    #@7b
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@7d
    .line 419
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@7f
    iput-object v3, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@81
    .line 420
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@83
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@86
    move-result-object v4

    #@87
    if-eqz v4, :cond_3

    #@89
    .line 422
    iget-object v4, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    #@8b
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@8d
    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    #@90
    .line 425
    :cond_3
    iget-object v4, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    #@92
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    #@94
    iget-object v6, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    #@96
    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@99
    .line 426
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    #@9c
    .line 391
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "gravity":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public hide()V
    .locals 2

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 386
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 377
    return-void
.end method
