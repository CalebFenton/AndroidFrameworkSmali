.class Lcom/android/internal/app/ChooserActivity$FinishAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishAnimation"
.end annotation


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private final blacklist mFromAlpha:F

.field private blacklist mRootView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .line 4232
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4233
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mActivity:Landroid/app/Activity;

    .line 4234
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    .line 4235
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mFromAlpha:F

    .line 4236
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4237
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v0

    .line 4238
    .local v0, "duration":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->setDuration(J)V

    .line 4244
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->setStartOffset(J)V

    .line 4245
    invoke-super {p0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4246
    return-void
.end method

.method private blacklist cleanup()V
    .registers 2

    .line 4280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mActivity:Landroid/app/Activity;

    .line 4281
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    .line 4282
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 3

    .line 4255
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 4256
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mFromAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4258
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->cleanup()V

    .line 4259
    invoke-super {p0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 4260
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 4268
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mActivity:Landroid/app/Activity;

    .line 4269
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->cleanup()V

    .line 4270
    if-eqz v0, :cond_a

    .line 4271
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4273
    :cond_a
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 4277
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 4264
    return-void
.end method

.method public whitelist setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 4250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
