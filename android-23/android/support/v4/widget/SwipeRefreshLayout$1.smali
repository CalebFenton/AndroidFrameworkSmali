.class Landroid/support/v4/widget/SwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 165
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    const/16 v2, 0xff

    #@2
    .line 176
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@4
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get5(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 178
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@c
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get4(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    #@13
    .line 179
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@15
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get4(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->start()V

    #@1c
    .line 180
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@1e
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get3(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 181
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@26
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get2(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    #@29
    move-result-object v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 182
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2e
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get2(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    #@31
    move-result-object v0

    #@32
    invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    #@35
    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@37
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@39
    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get0(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    #@40
    move-result v1

    #@41
    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->-set0(Landroid/support/v4/widget/SwipeRefreshLayout;I)I

    #@44
    .line 175
    return-void

    #@45
    .line 186
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@47
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get4(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->stop()V

    #@4e
    .line 187
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@50
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get0(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;

    #@53
    move-result-object v0

    #@54
    const/16 v1, 0x8

    #@56
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    #@59
    .line 188
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@5b
    invoke-static {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->-wrap2(Landroid/support/v4/widget/SwipeRefreshLayout;I)V

    #@5e
    .line 190
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@60
    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get6(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_2

    #@66
    .line 191
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@68
    const/4 v1, 0x0

    #@69
    invoke-static {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->-wrap1(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    #@6c
    goto :goto_0

    #@6d
    .line 193
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@6f
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@71
    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@73
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    #@75
    invoke-static {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->-get1(Landroid/support/v4/widget/SwipeRefreshLayout;)I

    #@78
    move-result v2

    #@79
    sub-int/2addr v1, v2

    #@7a
    .line 194
    const/4 v2, 0x1

    #@7b
    .line 193
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->-wrap3(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V

    #@7e
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 171
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 167
    return-void
.end method
