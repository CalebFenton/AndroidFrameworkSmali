.class Landroid/support/v4/widget/SwipeRefreshLayout$9;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
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
    .line 1108
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 1111
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get8(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@8
    invoke-static {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get8(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    #@b
    move-result v2

    #@c
    neg-float v2, v2

    #@d
    mul-float/2addr v2, p1

    #@e
    add-float v0, v1, v2

    #@10
    .line 1112
    .local v0, "targetScale":F
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@12
    invoke-static {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-wrap1(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    #@15
    .line 1113
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@17
    invoke-static {v1, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->-wrap0(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    #@1a
    .line 1110
    return-void
.end method
