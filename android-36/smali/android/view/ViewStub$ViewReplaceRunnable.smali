.class public Landroid/view/ViewStub$ViewReplaceRunnable;
.super Ljava/lang/Object;
.source "ViewStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewReplaceRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewStub;

.field public final greylist-max-o view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewStub;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 356
    iput-object p1, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p2, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    .line 358
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 362
    iget-object v0, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    iget-object v1, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/ViewStub;->-$$Nest$mreplaceSelfWithView(Landroid/view/ViewStub;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 363
    return-void
.end method
