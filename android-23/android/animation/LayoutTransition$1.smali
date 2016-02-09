.class Landroid/animation/LayoutTransition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/LayoutTransition;
    .param p2, "val$child"    # Landroid/view/View;

    #@0
    .prologue
    .line 869
    iput-object p1, p0, Landroid/animation/LayoutTransition$1;->this$0:Landroid/animation/LayoutTransition;

    #@2
    iput-object p2, p0, Landroid/animation/LayoutTransition$1;->val$child:Landroid/view/View;

    #@4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 872
    iget-object v0, p0, Landroid/animation/LayoutTransition$1;->this$0:Landroid/animation/LayoutTransition;

    #@2
    invoke-static {v0}, Landroid/animation/LayoutTransition;->-get14(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/animation/LayoutTransition$1;->val$child:Landroid/view/View;

    #@8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 871
    return-void
.end method
