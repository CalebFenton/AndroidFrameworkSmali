.class Landroid/widget/inline/InlineContentView$2;
.super Ljava/lang/Object;
.source "InlineContentView.java"

# interfaces
.implements Landroid/view/SurfaceControl$OnReparentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/inline/InlineContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/inline/InlineContentView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/inline/InlineContentView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/inline/InlineContentView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Landroid/widget/inline/InlineContentView$2;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 7
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "parent"    # Landroid/view/SurfaceControl;

    .line 142
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 143
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getLocalOwnerView()Landroid/view/View;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 144
    .local v1, "parentSurfaceOwnerView":Landroid/view/View;
    :goto_9
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_1b

    .line 145
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$2;->this$0:Landroid/widget/inline/InlineContentView;

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v3, v1

    check-cast v3, Landroid/view/SurfaceView;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Landroid/widget/inline/InlineContentView;->-$$Nest$fputmParentSurfaceOwnerView(Landroid/widget/inline/InlineContentView;Ljava/lang/ref/WeakReference;)V

    goto :goto_20

    .line 148
    :cond_1b
    iget-object v2, p0, Landroid/widget/inline/InlineContentView$2;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-static {v2, v0}, Landroid/widget/inline/InlineContentView;->-$$Nest$fputmParentSurfaceOwnerView(Landroid/widget/inline/InlineContentView;Ljava/lang/ref/WeakReference;)V

    .line 150
    :goto_20
    return-void
.end method
