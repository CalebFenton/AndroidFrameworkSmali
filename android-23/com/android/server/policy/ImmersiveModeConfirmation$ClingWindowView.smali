.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClingWindowView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final BGCOLOR:I = -0x80000000

.field private static final OFFSET_DP:I = 0x60


# instance fields
.field private mClingLayout:Landroid/view/ViewGroup;

.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    #@2
    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "confirm"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@2
    .line 233
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    .line 190
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@b
    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    #@d
    .line 195
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    #@12
    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    #@14
    .line 205
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;

    #@16
    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    #@19
    .line 204
    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@1b
    .line 223
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;

    #@1d
    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    #@20
    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    #@22
    .line 234
    iput-object p3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    #@24
    .line 235
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    #@26
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@29
    .line 236
    const/4 v0, 0x2

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setImportantForAccessibility(I)V

    #@2d
    .line 238
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    #@2f
    const v1, 0x10c000e

    #@32
    .line 237
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    #@38
    .line 232
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 8

    #@0
    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    .line 245
    new-instance v2, Landroid/util/DisplayMetrics;

    #@5
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    #@8
    .line 246
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@a
    invoke-static {v4}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-get1(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@15
    .line 247
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    #@17
    .line 249
    .local v1, "density":F
    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@1a
    move-result-object v4

    #@1b
    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    #@1d
    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    #@20
    .line 253
    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->getContext()Landroid/content/Context;

    #@23
    move-result-object v4

    #@24
    const v5, 0x1090068

    #@27
    const/4 v6, 0x0

    #@28
    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    #@2b
    move-result-object v4

    #@2c
    .line 252
    check-cast v4, Landroid/view/ViewGroup;

    #@2e
    iput-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    #@30
    .line 255
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    #@32
    const v5, 0x1020347

    #@35
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/widget/Button;

    #@3b
    .line 256
    .local v3, "ok":Landroid/widget/Button;
    new-instance v4, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;

    #@3d
    invoke-direct {v4, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    #@40
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@43
    .line 262
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    #@45
    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@47
    invoke-virtual {v5}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {p0, v4, v5}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@4e
    .line 264
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_0

    #@54
    .line 265
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    #@56
    .line 266
    .local v0, "cling":Landroid/view/View;
    const/4 v4, 0x0

    #@57
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    #@5a
    .line 267
    const/high16 v4, -0x3d400000    # -96.0f

    #@5c
    mul-float/2addr v4, v1

    #@5d
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    #@60
    .line 269
    new-instance v4, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;

    #@62
    invoke-direct {v4, p0, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    #@65
    invoke-virtual {p0, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@68
    .line 297
    .end local v0    # "cling":Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    #@6a
    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    #@6c
    .line 298
    new-instance v6, Landroid/content/IntentFilter;

    #@6e
    const-string/jumbo v7, "android.intent.action.CONFIGURATION_CHANGED"

    #@71
    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@74
    .line 297
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@77
    .line 242
    return-void

    #@78
    .line 294
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    #@7a
    const/high16 v5, -0x80000000

    #@7c
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    #@7f
    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@7
    .line 302
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motion"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 308
    const/4 v0, 0x1

    #@1
    return v0
.end method
