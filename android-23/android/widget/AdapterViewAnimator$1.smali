.class Landroid/widget/AdapterViewAnimator$1;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AdapterViewAnimator;
    .param p2, "val$v"    # Landroid/view/View;
    .param p3, "val$viewData"    # Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@0
    .prologue
    .line 648
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    #@2
    iput-object p2, p0, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    #@4
    iput-object p3, p0, Landroid/widget/AdapterViewAnimator$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    #@2
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    #@7
    .line 651
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    #@9
    new-instance v1, Landroid/widget/AdapterViewAnimator$1$1;

    #@b
    iget-object v2, p0, Landroid/widget/AdapterViewAnimator$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@d
    iget-object v3, p0, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    #@f
    invoke-direct {v1, p0, v2, v3}, Landroid/widget/AdapterViewAnimator$1$1;-><init>(Landroid/widget/AdapterViewAnimator$1;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;Landroid/view/View;)V

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    #@15
    .line 649
    return-void
.end method
