.class final Lcom/android/internal/widget/FloatingToolbar$ViewFader;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewFader"
.end annotation


# static fields
.field private static final FADE_IN_DURATION:I = 0x96

.field private static final FADE_OUT_DURATION:I = 0xfa


# instance fields
.field private final mFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private final mFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    const/high16 v5, 0x3f800000    # 1.0f

    #@5
    const/4 v4, 0x0

    #@6
    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 1392
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/View;

    #@f
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mView:Landroid/view/View;

    #@11
    .line 1393
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@13
    new-array v1, v8, [F

    #@15
    aput v5, v1, v6

    #@17
    aput v4, v1, v7

    #@19
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@1c
    move-result-object v0

    #@1d
    .line 1394
    const-wide/16 v2, 0xfa

    #@1f
    .line 1393
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    #@25
    .line 1395
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@27
    new-array v1, v8, [F

    #@29
    aput v4, v1, v6

    #@2b
    aput v5, v1, v7

    #@2d
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@30
    move-result-object v0

    #@31
    .line 1396
    const-wide/16 v2, 0x96

    #@33
    .line 1395
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    #@39
    .line 1391
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$ViewFader;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;)V

    #@3
    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    #@0
    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    #@2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@5
    .line 1419
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    #@7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    #@a
    .line 1417
    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 2
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->cancelFadeAnimations()V

    #@3
    .line 1401
    if-eqz p1, :cond_0

    #@5
    .line 1402
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    #@7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@a
    .line 1399
    :goto_0
    return-void

    #@b
    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mView:Landroid/view/View;

    #@d
    const/high16 v1, 0x3f800000    # 1.0f

    #@f
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@12
    goto :goto_0
.end method

.method public fadeOut(Z)V
    .locals 2
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 1409
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->cancelFadeAnimations()V

    #@3
    .line 1410
    if-eqz p1, :cond_0

    #@5
    .line 1411
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    #@7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@a
    .line 1408
    :goto_0
    return-void

    #@b
    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mView:Landroid/view/View;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@11
    goto :goto_0
.end method
