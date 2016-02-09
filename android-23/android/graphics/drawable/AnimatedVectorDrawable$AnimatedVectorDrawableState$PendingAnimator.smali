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
.field public final animResId:I

.field public final pathErrorScale:F

.field public final target:Ljava/lang/String;


# direct methods
.method public constructor <init>(IFLjava/lang/String;)V
    .locals 0
    .param p1, "animResId"    # I
    .param p2, "pathErrorScale"    # F
    .param p3, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 561
    iput p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->animResId:I

    #@5
    .line 562
    iput p2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->pathErrorScale:F

    #@7
    .line 563
    iput-object p3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->target:Ljava/lang/String;

    #@9
    .line 560
    return-void
.end method


# virtual methods
.method public newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/animation/Animator;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 567
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->animResId:I

    #@2
    iget v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->pathErrorScale:F

    #@4
    invoke-static {p1, p2, v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
