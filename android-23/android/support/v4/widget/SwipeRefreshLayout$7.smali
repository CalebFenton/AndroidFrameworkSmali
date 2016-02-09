.class Landroid/support/v4/widget/SwipeRefreshLayout$7;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/SwipeRefreshLayout;
    .param p2, "val$startingAlpha"    # I
    .param p3, "val$endingAlpha"    # I

    #@0
    .prologue
    .line 452
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->val$startingAlpha:I

    #@4
    iput p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->val$endingAlpha:I

    #@6
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get4(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    #@5
    move-result-object v0

    #@6
    .line 456
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->val$startingAlpha:I

    #@8
    int-to-float v1, v1

    #@9
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->val$endingAlpha:I

    #@b
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->val$startingAlpha:I

    #@d
    sub-int/2addr v2, v3

    #@e
    int-to-float v2, v2

    #@f
    mul-float/2addr v2, p1

    #@10
    add-float/2addr v1, v2

    #@11
    float-to-int v1, v1

    #@12
    .line 455
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    #@15
    .line 454
    return-void
.end method
