.class Landroid/support/v4/widget/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    #@0
    .prologue
    .line 426
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    sub-float/2addr v1, p1

    #@5
    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->-wrap1(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    #@8
    .line 428
    return-void
.end method
