.class Landroid/widget/AbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 6214
    iput-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    #@0
    .prologue
    .line 6222
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 6242
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6227
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    #@3
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 6229
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    #@e
    .line 6230
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 6232
    :cond_0
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 6247
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    #@3
    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@6
    .line 6248
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #@8
    const/4 v1, 0x0

    #@9
    iput-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@b
    .line 6251
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #@d
    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    #@10
    .line 6253
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #@12
    iput-boolean v2, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@14
    .line 6254
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #@16
    invoke-virtual {v0}, Landroid/widget/AbsListView;->rememberSyncState()V

    #@19
    .line 6255
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #@1b
    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    #@1e
    .line 6257
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #@20
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    #@23
    .line 6246
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    #@0
    .prologue
    .line 6263
    iget-object v1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move-wide v4, p3

    #@5
    move v6, p5

    #@6
    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    #@9
    .line 6266
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #@b
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 6267
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    #@14
    .line 6262
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 6237
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    #@0
    .prologue
    .line 6218
    iput-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    #@2
    .line 6217
    return-void
.end method
