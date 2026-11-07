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
.field final synthetic blacklist this$0:Landroid/widget/AdapterViewAnimator;

.field final synthetic blacklist val$v:Landroid/view/View;

.field final synthetic blacklist val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V
    .registers 4
    .param p1, "this$0"    # Landroid/widget/AdapterViewAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 655
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    iput-object p2, p0, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/AdapterViewAnimator$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 657
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    new-instance v1, Landroid/widget/AdapterViewAnimator$1$1;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$1$1;-><init>(Landroid/widget/AdapterViewAnimator$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    .line 668
    return-void
.end method
