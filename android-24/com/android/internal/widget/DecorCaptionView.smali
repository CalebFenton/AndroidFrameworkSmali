.class public Lcom/android/internal/widget/DecorCaptionView;
.super Landroid/view/ViewGroup;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DecorCaptionView"


# instance fields
.field private mCaption:Landroid/view/View;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mClose:Landroid/view/View;

.field private final mCloseRect:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private mDragSlop:I

.field private mDragging:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLeftMouseButtonReleased:Z

.field private mMaximize:Landroid/view/View;

.field private final mMaximizeRect:Landroid/graphics/Rect;

.field private mOverlayWithAppContent:Z

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mShow:Z

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 111
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@4
    .line 79
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    #@7
    .line 80
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    #@9
    .line 83
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    #@b
    .line 88
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    #@d
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    #@f
    const/4 v1, 0x2

    #@10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    #@15
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    #@1c
    .line 107
    new-instance v0, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    #@23
    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    #@26
    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 79
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    #@7
    .line 80
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    #@9
    .line 83
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    #@b
    .line 88
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    #@d
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    #@f
    const/4 v1, 0x2

    #@10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    #@15
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    #@1c
    .line 107
    new-instance v0, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    #@23
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    #@26
    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 79
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    #@7
    .line 80
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    #@9
    .line 83
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    #@b
    .line 88
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    #@d
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    #@f
    const/4 v1, 0x2

    #@10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    #@15
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    #@1c
    .line 107
    new-instance v0, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    #@23
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    #@26
    .line 120
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 126
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    #@a
    .line 127
    new-instance v0, Landroid/view/GestureDetector;

    #@c
    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    #@11
    .line 125
    return-void
.end method

.method private isFillingScreen()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    #@8
    move-result v2

    #@9
    or-int/2addr v1, v2

    #@a
    and-int/lit16 v1, v1, 0xa05

    #@c
    if-eqz v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method private maximizeWindow()V
    .locals 4

    #@0
    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v2}, Landroid/view/Window;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    #@5
    move-result-object v0

    #@6
    .line 350
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_0

    #@8
    .line 352
    :try_start_0
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->exitFreeformMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 348
    :cond_0
    :goto_0
    return-void

    #@c
    .line 353
    :catch_0
    move-exception v1

    #@d
    .line 354
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DecorCaptionView"

    #@10
    const-string/jumbo v3, "Cannot change task workspace."

    #@13
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    goto :goto_0
.end method

.method private passedSlop(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 248
    iget v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    #@3
    sub-int v1, p1, v1

    #@5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@8
    move-result v1

    #@9
    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    #@b
    if-gt v1, v2, :cond_0

    #@d
    iget v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    #@f
    sub-int v1, p2, v1

    #@11
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@14
    move-result v1

    #@15
    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    #@17
    if-le v1, v2, :cond_1

    #@19
    :cond_0
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method private updateCaptionVisibility()V
    .locals 3

    #@0
    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isFillingScreen()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    .line 341
    .local v0, "invisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@d
    if-eqz v0, :cond_1

    #@f
    const/16 v1, 0x8

    #@11
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    #@14
    .line 342
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@16
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@19
    .line 338
    return-void

    #@1a
    .line 340
    .end local v0    # "invisible":Z
    :cond_0
    const/4 v0, 0x1

    #@1b
    .restart local v0    # "invisible":Z
    goto :goto_0

    #@1c
    .line 341
    :cond_1
    const/4 v1, 0x0

    #@1d
    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 262
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "params "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, " must subclass MarginLayoutParams"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 263
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 267
    :cond_0
    if-ge p2, v1, :cond_1

    #@28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@2b
    move-result v0

    #@2c
    if-lt v0, v1, :cond_2

    #@2e
    .line 268
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@30
    const-string/jumbo v1, "DecorCaptionView can only handle 1 client view"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 272
    :cond_2
    const/4 v0, 0x0

    #@38
    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3b
    .line 273
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@3d
    .line 261
    return-void
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@6
    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    #@c
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    #@17
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    #@1e
    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 396
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 385
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 380
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 391
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getCaptionHeight()I
    .locals 1

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isCaptionShowing()Z
    .locals 1

    #@0
    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    #@2
    return v0
.end method

.method public onConfigurationChanged(Z)V
    .locals 0
    .param p1, "show"    # Z

    #@0
    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    #@2
    .line 257
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    #@5
    .line 255
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 401
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    #@3
    .line 133
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@a
    .line 131
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    #@0
    .prologue
    .line 431
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_1

    #@7
    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@a
    move-result v3

    #@b
    float-to-int v0, v3

    #@c
    .line 159
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@f
    move-result v3

    #@10
    float-to-int v1, v3

    #@11
    .line 160
    .local v1, "y":I
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 161
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    #@1b
    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    #@1d
    .line 163
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 164
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    #@27
    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    #@29
    .line 167
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    #@2b
    if-eqz v3, :cond_2

    #@2d
    const/4 v2, 0x1

    #@2e
    :cond_2
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 301
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@6
    move-result v1

    #@7
    const/16 v2, 0x8

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 302
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@d
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@f
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@12
    move-result v2

    #@13
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@15
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    #@1c
    .line 303
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@1e
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@21
    move-result v1

    #@22
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@24
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@27
    move-result v2

    #@28
    sub-int v0, v1, v2

    #@2a
    .line 304
    .local v0, "captionHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    #@2c
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    #@2e
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@31
    .line 305
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    #@33
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    #@35
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@38
    .line 312
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@3a
    if-eqz v1, :cond_0

    #@3c
    .line 313
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    #@3e
    if-eqz v1, :cond_2

    #@40
    .line 314
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@42
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@44
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@47
    move-result v2

    #@48
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@4a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@4d
    move-result v3

    #@4e
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    #@51
    .line 322
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    #@53
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    #@55
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@58
    move-result v2

    #@59
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    #@5b
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@5e
    move-result v3

    #@5f
    .line 323
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    #@61
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@64
    move-result v4

    #@65
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    #@67
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@6a
    move-result v5

    #@6b
    .line 322
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Window;->notifyRestrictedCaptionAreaCallback(IIII)V

    #@6e
    .line 299
    return-void

    #@6f
    .line 307
    .end local v0    # "captionHeight":I
    :cond_1
    const/4 v0, 0x0

    #@70
    .line 308
    .restart local v0    # "captionHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    #@72
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    #@75
    .line 309
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    #@77
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    #@7a
    goto :goto_0

    #@7b
    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@7d
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@7f
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@82
    move-result v2

    #@83
    .line 317
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@85
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@88
    move-result v3

    #@89
    add-int/2addr v3, v0

    #@8a
    .line 316
    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    #@8d
    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 425
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x8

    #@9
    if-eq v0, v1, :cond_1

    #@b
    .line 280
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@d
    move-object v0, p0

    #@e
    move v2, p1

    #@f
    move v4, p2

    #@10
    move v5, v3

    #@11
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@14
    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@16
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@19
    move-result v5

    #@1a
    .line 285
    .local v5, "captionHeight":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 286
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 287
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@24
    move-object v0, p0

    #@25
    move v2, p1

    #@26
    move v4, p2

    #@27
    move v5, v3

    #@28
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@2b
    .line 294
    .end local v5    # "captionHeight":I
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@2e
    move-result v0

    #@2f
    .line 295
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@32
    move-result v1

    #@33
    .line 294
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    #@36
    .line 277
    return-void

    #@37
    .line 283
    :cond_1
    const/4 v5, 0x0

    #@38
    .restart local v5    # "captionHeight":I
    goto :goto_0

    #@39
    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@3b
    move-object v0, p0

    #@3c
    move v2, p1

    #@3d
    move v4, p2

    #@3e
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@41
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    #@0
    .prologue
    .line 421
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 405
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    #@3
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    #@5
    if-ne v0, v1, :cond_1

    #@7
    .line 412
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->maximizeWindow()V

    #@a
    .line 416
    :cond_0
    :goto_0
    return v2

    #@b
    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    #@d
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    #@13
    invoke-virtual {v0, v2}, Landroid/view/Window;->dispatchOnWindowDismissed(Z)V

    #@16
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@6
    move-result v4

    #@7
    float-to-int v0, v4

    #@8
    .line 189
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@b
    move-result v4

    #@c
    float-to-int v1, v4

    #@d
    .line 190
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    #@10
    move-result v4

    #@11
    packed-switch v4, :pswitch_data_0

    #@14
    .line 232
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    #@16
    if-nez v2, :cond_1

    #@18
    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    #@1a
    :cond_1
    return v3

    #@1b
    .line 192
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    #@1d
    if-nez v4, :cond_2

    #@1f
    .line 194
    return v2

    #@20
    .line 198
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    #@23
    move-result v2

    #@24
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    #@27
    move-result v2

    #@28
    if-ne v2, v5, :cond_3

    #@2a
    .line 199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    #@2d
    move-result v2

    #@2e
    and-int/lit8 v2, v2, 0x1

    #@30
    if-eqz v2, :cond_0

    #@32
    .line 200
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    #@34
    .line 201
    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    #@36
    .line 202
    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    #@38
    goto :goto_0

    #@39
    .line 207
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    #@3b
    if-nez v4, :cond_4

    #@3d
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    #@3f
    if-eqz v4, :cond_4

    #@41
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->passedSlop(II)Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_4

    #@47
    .line 208
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    #@49
    .line 209
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    #@4b
    .line 210
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mLeftMouseButtonReleased:Z

    #@4d
    .line 211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    #@50
    move-result v2

    #@51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    #@54
    move-result v4

    #@55
    invoke-virtual {p0, v2, v4}, Landroid/view/View;->startMovingTask(FF)Z

    #@58
    goto :goto_0

    #@59
    .line 212
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    #@5b
    if-eqz v2, :cond_0

    #@5d
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mLeftMouseButtonReleased:Z

    #@5f
    if-nez v2, :cond_0

    #@61
    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    #@64
    move-result v2

    #@65
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    #@68
    move-result v2

    #@69
    if-ne v2, v5, :cond_0

    #@6b
    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    #@6e
    move-result v2

    #@6f
    and-int/lit8 v2, v2, 0x1

    #@71
    if-nez v2, :cond_0

    #@73
    .line 217
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mLeftMouseButtonReleased:Z

    #@75
    goto :goto_0

    #@76
    .line 225
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    #@78
    if-eqz v4, :cond_0

    #@7a
    .line 229
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    #@7c
    .line 230
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    #@7e
    if-eqz v4, :cond_5

    #@80
    :goto_1
    return v2

    #@81
    :cond_5
    move v2, v3

    #@82
    goto :goto_1

    #@83
    .line 190
    nop

    #@84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 172
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 173
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    #@8
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@b
    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v0

    #@f
    .line 175
    .local v0, "action":I
    if-eq v0, v2, :cond_0

    #@11
    const/4 v1, 0x3

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 176
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    #@16
    .line 178
    :cond_1
    return v2

    #@17
    .line 180
    .end local v0    # "action":I
    :cond_2
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public removeContentView()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@a
    .line 370
    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    #@c
    .line 367
    :cond_0
    return-void
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 2
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "show"    # Z

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    #@2
    .line 138
    iput-boolean p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    #@4
    .line 139
    invoke-virtual {p1}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    #@7
    move-result v0

    #@8
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    #@a
    .line 140
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    #@14
    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    #@17
    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    #@19
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    #@1f
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    #@22
    .line 149
    const v0, 0x102035e

    #@25
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    #@2b
    .line 150
    const v0, 0x102035f

    #@2e
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    #@34
    .line 136
    return-void
.end method
