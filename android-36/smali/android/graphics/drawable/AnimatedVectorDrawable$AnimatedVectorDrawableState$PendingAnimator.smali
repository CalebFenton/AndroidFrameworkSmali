.class Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingAnimator"
.end annotation


# instance fields
.field public final greylist-max-o animResId:I

.field public final greylist-max-o pathErrorScale:F

.field public final greylist-max-o target:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(IFLjava/lang/String;)V
    .registers 4
    .param p1, "animResId"    # I
    .param p2, "pathErrorScale"    # F
    .param p3, "target"    # Ljava/lang/String;

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->animResId:I

    .line 891
    iput p2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->pathErrorScale:F

    .line 892
    iput-object p3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->target:Ljava/lang/String;

    .line 893
    return-void
.end method


# virtual methods
.method public greylist-max-o newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/animation/Animator;
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 896
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->animResId:I

    iget v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->pathErrorScale:F

    invoke-static {p1, p2, v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
