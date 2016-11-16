.class Landroid/widget/Editor$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mHandle:Landroid/widget/Editor$InsertionHandleView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -wrap0(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 5045
    iput-object p1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$InsertionPointCursorController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;)V

    #@3
    return-void
.end method

.method private getHandle()Landroid/widget/Editor$InsertionHandleView;
    .locals 3

    #@0
    .prologue
    .line 5069
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 5070
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@a
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@c
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    .line 5071
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@16
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@19
    move-result-object v2

    #@1a
    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRes:I

    #@1c
    .line 5070
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/widget/Editor;->-set2(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@23
    .line 5073
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@25
    if-nez v0, :cond_1

    #@27
    .line 5074
    new-instance v0, Landroid/widget/Editor$InsertionHandleView;

    #@29
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@2b
    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@2d
    invoke-static {v2}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$InsertionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V

    #@34
    iput-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@36
    .line 5076
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@38
    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 5057
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5058
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->hide()V

    #@9
    .line 5056
    :cond_0
    return-void
.end method

.method public invalidateHandle()V
    .locals 1

    #@0
    .prologue
    .line 5098
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5099
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->invalidate()V

    #@9
    .line 5097
    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 5094
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->isShowing()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isCursorBeingModified()Z
    .locals 1

    #@0
    .prologue
    .line 5089
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->isDragging()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    #@0
    .prologue
    .line 5081
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v0

    #@a
    .line 5082
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@d
    .line 5084
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@f
    if-eqz v1, :cond_0

    #@11
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;

    #@13
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionHandleView;->onDetached()V

    #@16
    .line 5080
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    #@0
    .prologue
    .line 5063
    if-nez p1, :cond_0

    #@2
    .line 5064
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    #@5
    .line 5062
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    #@0
    .prologue
    .line 5049
    invoke-direct {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->show()V

    #@7
    .line 5051
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@9
    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 5052
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #@f
    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@11
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@14
    .line 5048
    :cond_0
    return-void
.end method
