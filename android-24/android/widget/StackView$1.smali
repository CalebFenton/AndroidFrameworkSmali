.class Landroid/widget/StackView$1;
.super Ljava/lang/Object;
.source "StackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/StackView;->transformViewForTransition(IILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/StackView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/StackView;
    .param p2, "val$view"    # Landroid/view/View;

    #@0
    .prologue
    .line 303
    iput-object p1, p0, Landroid/widget/StackView$1;->this$0:Landroid/widget/StackView;

    #@2
    iput-object p2, p0, Landroid/widget/StackView$1;->val$view:Landroid/view/View;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Landroid/widget/StackView$1;->val$view:Landroid/view/View;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@6
    .line 304
    return-void
.end method