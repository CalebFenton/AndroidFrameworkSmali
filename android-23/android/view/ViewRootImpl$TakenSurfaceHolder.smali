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
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 6631
    iput-object p1, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public isCreating()Z
    .locals 1

    #@0
    .prologue
    .line 6660
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    #@4
    return v0
.end method

.method public onAllowLockCanvas()Z
    .locals 1

    #@0
    .prologue
    .line 6634
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    #@4
    return v0
.end method

.method public onRelayoutContainer()V
    .locals 0

    #@0
    .prologue
    .line 6638
    return-void
.end method

.method public onUpdateSurface()V
    .locals 2

    #@0
    .prologue
    .line 6655
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Shouldn\'t be here"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setFixedSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 6665
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 6666
    const-string/jumbo v1, "Currently only support sizing from layout"

    #@5
    .line 6665
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setFormat(I)V
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 6644
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@6
    invoke-interface {v0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceFormat(I)V

    #@9
    .line 6643
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    #@0
    .prologue
    .line 6671
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@6
    invoke-interface {v0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceKeepScreenOn(Z)V

    #@9
    .line 6670
    return-void
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 6649
    iget-object v0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@4
    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    #@6
    invoke-interface {v0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceType(I)V

    #@9
    .line 6648
    return-void
.end method
