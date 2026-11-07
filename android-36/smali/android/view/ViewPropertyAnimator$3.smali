.class Landroid/view/ViewPropertyAnimator$3;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewPropertyAnimator;

.field final synthetic blacklist val$currentLayerType:I


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewPropertyAnimator;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewPropertyAnimator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 782
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$3;->this$0:Landroid/view/ViewPropertyAnimator;

    iput p2, p0, Landroid/view/ViewPropertyAnimator$3;->val$currentLayerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 785
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$3;->this$0:Landroid/view/ViewPropertyAnimator;

    iget-object v0, v0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, p0, Landroid/view/ViewPropertyAnimator$3;->val$currentLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 786
    return-void
.end method
