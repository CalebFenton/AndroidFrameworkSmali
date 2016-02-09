.class Landroid/support/v4/widget/SwipeRefreshLayout$3;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
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
    .line 1069
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 1072
    const/4 v2, 0x0

    #@1
    .line 1073
    .local v2, "targetTop":I
    const/4 v0, 0x0

    #@2
    .line 1074
    .local v0, "endTarget":I
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@4
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get9(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 1075
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@c
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get7(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    #@f
    move-result v3

    #@10
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@12
    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@14
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@17
    move-result v4

    #@18
    int-to-float v4, v4

    #@19
    sub-float/2addr v3, v4

    #@1a
    float-to-int v0, v3

    #@1b
    .line 1079
    :goto_0
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@1d
    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@1f
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@21
    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@23
    sub-int v4, v0, v4

    #@25
    int-to-float v4, v4

    #@26
    mul-float/2addr v4, p1

    #@27
    float-to-int v4, v4

    #@28
    add-int v2, v3, v4

    #@2a
    .line 1080
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2c
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get0(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    #@33
    move-result v3

    #@34
    sub-int v1, v2, v3

    #@36
    .line 1081
    .local v1, "offset":I
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@38
    const/4 v4, 0x0

    #@39
    invoke-static {v3, v1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->-wrap3(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V

    #@3c
    .line 1082
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@3e
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get4(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    #@41
    move-result-object v3

    #@42
    const/high16 v4, 0x3f800000    # 1.0f

    #@44
    sub-float/2addr v4, p1

    #@45
    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    #@48
    .line 1071
    return-void

    #@49
    .line 1077
    .end local v1    # "offset":I
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@4b
    invoke-static {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get7(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    #@4e
    move-result v3

    #@4f
    float-to-int v0, v3

    #@50
    goto :goto_0
.end method
