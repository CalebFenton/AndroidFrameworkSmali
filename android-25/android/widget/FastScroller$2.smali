.class Landroid/widget/FastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/widget/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/FastScroller;

    #@0
    .prologue
    .line 240
    iput-object p1, p0, Landroid/widget/FastScroller$2;->this$0:Landroid/widget/FastScroller;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 243
    iget-object v1, p0, Landroid/widget/FastScroller$2;->this$0:Landroid/widget/FastScroller;

    #@2
    iget-object v0, p0, Landroid/widget/FastScroller$2;->this$0:Landroid/widget/FastScroller;

    #@4
    invoke-static {v0}, Landroid/widget/FastScroller;->-get0(Landroid/widget/FastScroller;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    invoke-static {v1, v0}, Landroid/widget/FastScroller;->-set0(Landroid/widget/FastScroller;Z)Z

    #@e
    .line 242
    return-void

    #@f
    .line 243
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method
