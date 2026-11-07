.class Landroid/view/ViewRootImpl$TakenSurfaceHolder;
.super Lcom/android/internal/view/BaseSurfaceHolder;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TakenSurfaceHolder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11670
    iput-object p1, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist isCreating()Z
    .registers 2

    .line 11699
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    return v0
.end method

.method public greylist-max-o onAllowLockCanvas()Z
    .registers 2

    .line 11673
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    return v0
.end method

.method public greylist-max-o onRelayoutContainer()V
    .registers 1

    .line 11679
    return-void
.end method

.method public greylist-max-o onUpdateSurface()V
    .registers 3

    .line 11694
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFixedSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 11704
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Currently only support sizing from layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .line 11683
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceFormat(I)V

    .line 11684
    return-void
.end method

.method public whitelist setKeepScreenOn(Z)V
    .registers 3
    .param p1, "screenOn"    # Z

    .line 11710
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceKeepScreenOn(Z)V

    .line 11711
    return-void
.end method

.method public whitelist setType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 11688
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceType(I)V

    .line 11689
    return-void
.end method
