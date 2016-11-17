.class Landroid/widget/Editor$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private mHandleHeight:I

.field private final mHasSelection:Z

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Z)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "hasSelection"    # Z

    #@0
    .prologue
    .line 3657
    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    #@5
    .line 3651
    new-instance v2, Landroid/graphics/Path;

    #@7
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    #@a
    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    #@c
    .line 3652
    new-instance v2, Landroid/graphics/RectF;

    #@e
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@11
    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    #@13
    .line 3658
    iput-boolean p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    #@15
    .line 3659
    iget-boolean v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 3660
    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@1c
    move-result-object v1

    #@1d
    .line 3661
    .local v1, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    #@20
    move-result-object v2

    #@21
    if-nez v2, :cond_0

    #@23
    .line 3663
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap0(Landroid/widget/Editor$SelectionModifierCursorController;)V

    #@26
    .line 3664
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-wrap1(Landroid/widget/Editor$SelectionModifierCursorController;)V

    #@29
    .line 3665
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@2c
    .line 3668
    :cond_0
    invoke-static {p1}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@33
    move-result v2

    #@34
    .line 3669
    invoke-static {p1}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@3b
    move-result v3

    #@3c
    .line 3667
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v2

    #@40
    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    #@42
    .line 3657
    .end local v1    # "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_1
    :goto_0
    return-void

    #@43
    .line 3671
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@46
    move-result-object v0

    #@47
    .line 3672
    .local v0, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v0, :cond_1

    #@49
    .line 3673
    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-wrap0(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    #@4c
    .line 3674
    invoke-static {p1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@53
    move-result v2

    #@54
    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    #@56
    goto :goto_0
.end method

.method private getCustomCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    #@0
    .prologue
    .line 3711
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3712
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@6
    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    #@8
    .line 3711
    :goto_0
    return-object v0

    #@9
    .line 3713
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@b
    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    #@d
    goto :goto_0
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 3717
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 3718
    const v0, 0x1020020

    #@11
    const/4 v1, 0x3

    #@12
    .line 3719
    const v2, 0x1040003

    #@15
    .line 3718
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    #@18
    move-result-object v0

    #@19
    .line 3720
    const/16 v1, 0x78

    #@1b
    .line 3718
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@1e
    move-result-object v0

    #@1f
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@22
    .line 3724
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@24
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 3725
    const v0, 0x1020021

    #@31
    const/4 v1, 0x4

    #@32
    .line 3726
    const v2, 0x1040001

    #@35
    .line 3725
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    #@38
    move-result-object v0

    #@39
    .line 3727
    const/16 v1, 0x63

    #@3b
    .line 3725
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@3e
    move-result-object v0

    #@3f
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@42
    .line 3731
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@44
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 3732
    const v0, 0x1020022

    #@51
    const/4 v1, 0x5

    #@52
    .line 3733
    const v2, 0x104000b

    #@55
    .line 3732
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    #@58
    move-result-object v0

    #@59
    .line 3734
    const/16 v1, 0x76

    #@5b
    .line 3732
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@5e
    move-result-object v0

    #@5f
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@62
    .line 3738
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@64
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Landroid/widget/TextView;->canShare()Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_3

    #@6e
    .line 3739
    const v0, 0x1020035

    #@71
    const/4 v1, 0x7

    #@72
    .line 3740
    const v2, 0x1040483

    #@75
    .line 3739
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    #@78
    move-result-object v0

    #@79
    .line 3741
    const/4 v1, 0x1

    #@7a
    .line 3739
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@7d
    .line 3744
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    #@80
    .line 3745
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    #@83
    .line 3716
    return-void
.end method

.method private updateReplaceItem(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const v5, 0x1020034

    #@3
    .line 3773
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@5
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@11
    invoke-static {v2}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;)Z

    #@14
    move-result v0

    #@15
    .line 3774
    :goto_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    #@18
    move-result-object v2

    #@19
    if-eqz v2, :cond_3

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 3775
    .local v1, "replaceItemExists":Z
    :goto_1
    if-eqz v0, :cond_0

    #@1e
    if-eqz v1, :cond_4

    #@20
    .line 3779
    :cond_0
    if-nez v0, :cond_1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 3780
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    #@27
    .line 3772
    :cond_1
    :goto_2
    return-void

    #@28
    .line 3773
    .end local v1    # "replaceItemExists":Z
    :cond_2
    const/4 v0, 0x0

    #@29
    .local v0, "canReplace":Z
    goto :goto_0

    #@2a
    .line 3774
    .end local v0    # "canReplace":Z
    :cond_3
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "replaceItemExists":Z
    goto :goto_1

    #@2c
    .line 3776
    :cond_4
    const/4 v2, 0x0

    #@2d
    const/16 v3, 0x9

    #@2f
    .line 3777
    const v4, 0x104035e

    #@32
    .line 3776
    invoke-interface {p1, v2, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    #@35
    move-result-object v2

    #@36
    .line 3778
    const/4 v3, 0x1

    #@37
    .line 3776
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@3a
    goto :goto_2
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const v5, 0x102001f

    #@3
    .line 3761
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@5
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/widget/TextView;->canSelectAllText()Z

    #@c
    move-result v0

    #@d
    .line 3762
    .local v0, "canSelectAll":Z
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_2

    #@13
    const/4 v1, 0x1

    #@14
    .line 3763
    .local v1, "selectAllItemExists":Z
    :goto_0
    if-eqz v0, :cond_0

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 3767
    :cond_0
    if-nez v0, :cond_1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 3768
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    #@1f
    .line 3760
    :cond_1
    :goto_1
    return-void

    #@20
    .line 3762
    .end local v1    # "selectAllItemExists":Z
    :cond_2
    const/4 v1, 0x0

    #@21
    .restart local v1    # "selectAllItemExists":Z
    goto :goto_0

    #@22
    .line 3764
    :cond_3
    const/4 v2, 0x0

    #@23
    const/16 v3, 0x8

    #@25
    .line 3765
    const v4, 0x104000d

    #@28
    .line 3764
    invoke-interface {p1, v2, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    #@2b
    move-result-object v2

    #@2c
    .line 3766
    const/4 v3, 0x1

    #@2d
    .line 3764
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@30
    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 3786
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@3
    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@5
    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 3787
    return v2

    #@c
    .line 3789
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    #@f
    move-result-object v0

    #@10
    .line 3790
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_1

    #@12
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 3791
    return v2

    #@19
    .line 3793
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@1b
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    #@22
    move-result v2

    #@23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@26
    move-result v1

    #@27
    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 3681
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    #@6
    .line 3682
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    #@9
    .line 3683
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    #@c
    .line 3684
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    #@f
    .line 3686
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    #@12
    move-result-object v0

    #@13
    .line 3687
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    #@15
    .line 3688
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 3690
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@1d
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Landroid/text/Spannable;

    #@27
    .line 3691
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@29
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    #@30
    move-result v2

    #@31
    .line 3690
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@34
    .line 3692
    return v3

    #@35
    .line 3696
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@37
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Landroid/widget/TextView;->canProcessText()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 3697
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@43
    iget-object v1, v1, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@45
    invoke-virtual {v1, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;)V

    #@48
    .line 3700
    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    #@4b
    move-result v1

    #@4c
    if-nez v1, :cond_2

    #@4e
    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    #@51
    move-result-object v1

    #@52
    if-eqz v1, :cond_5

    #@54
    .line 3701
    :cond_2
    iget-boolean v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    #@56
    if-eqz v1, :cond_3

    #@58
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@5a
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Landroid/view/View;->hasTransientState()Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_4

    #@64
    .line 3704
    :cond_3
    :goto_0
    return v2

    #@65
    .line 3702
    :cond_4
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@67
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    #@6e
    goto :goto_0

    #@6f
    .line 3706
    :cond_5
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3799
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@3
    iput-object v2, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@5
    .line 3800
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    #@8
    move-result-object v0

    #@9
    .line 3801
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    #@b
    .line 3802
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@e
    .line 3805
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@10
    invoke-static {v1}, Landroid/widget/Editor;->-get1(Landroid/widget/Editor;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 3811
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@18
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/text/Spannable;

    #@22
    .line 3812
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@24
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    #@2b
    move-result v2

    #@2c
    .line 3811
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@2f
    .line 3815
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@31
    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@33
    if-eqz v1, :cond_2

    #@35
    .line 3816
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@37
    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@39
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@3c
    .line 3797
    :cond_2
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 15
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 3822
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v9

    #@6
    move-object/from16 v0, p2

    #@8
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v9

    #@c
    if-eqz v9, :cond_0

    #@e
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@10
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@13
    move-result-object v9

    #@14
    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@17
    move-result-object v9

    #@18
    if-nez v9, :cond_1

    #@1a
    .line 3823
    :cond_0
    invoke-super/range {p0 .. p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    #@1d
    .line 3824
    return-void

    #@1e
    .line 3826
    :cond_1
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@20
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@23
    move-result-object v9

    #@24
    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    #@27
    move-result v9

    #@28
    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@2a
    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2d
    move-result-object v10

    #@2e
    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionEnd()I

    #@31
    move-result v10

    #@32
    if-eq v9, v10, :cond_2

    #@34
    .line 3828
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    #@36
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    #@39
    .line 3829
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@3b
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@42
    move-result-object v9

    #@43
    .line 3830
    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@45
    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@48
    move-result-object v10

    #@49
    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    #@4c
    move-result v10

    #@4d
    iget-object v11, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@4f
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@52
    move-result-object v11

    #@53
    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    #@56
    move-result v11

    #@57
    iget-object v12, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    #@59
    .line 3829
    invoke-virtual {v9, v10, v11, v12}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    #@5c
    .line 3831
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    #@5e
    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    #@60
    const/4 v11, 0x1

    #@61
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@64
    .line 3832
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    #@66
    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    #@68
    iget v11, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    #@6a
    int-to-float v11, v11

    #@6b
    add-float/2addr v10, v11

    #@6c
    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    #@6e
    .line 3857
    :goto_0
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@70
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@77
    move-result v7

    #@78
    .line 3858
    .local v7, "textHorizontalOffset":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@7a
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@81
    move-result v8

    #@82
    .line 3860
    .local v8, "textVerticalOffset":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    #@84
    iget v9, v9, Landroid/graphics/RectF;->left:F

    #@86
    int-to-float v10, v7

    #@87
    add-float/2addr v9, v10

    #@88
    float-to-double v10, v9

    #@89
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    #@8c
    move-result-wide v10

    #@8d
    double-to-int v9, v10

    #@8e
    .line 3861
    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    #@90
    iget v10, v10, Landroid/graphics/RectF;->top:F

    #@92
    int-to-float v11, v8

    #@93
    add-float/2addr v10, v11

    #@94
    float-to-double v10, v10

    #@95
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    #@98
    move-result-wide v10

    #@99
    double-to-int v10, v10

    #@9a
    .line 3862
    iget-object v11, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    #@9c
    iget v11, v11, Landroid/graphics/RectF;->right:F

    #@9e
    int-to-float v12, v7

    #@9f
    add-float/2addr v11, v12

    #@a0
    float-to-double v12, v11

    #@a1
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    #@a4
    move-result-wide v12

    #@a5
    double-to-int v11, v12

    #@a6
    .line 3863
    iget-object v12, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    #@a8
    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    #@aa
    int-to-float v13, v8

    #@ab
    add-float/2addr v12, v13

    #@ac
    float-to-double v12, v12

    #@ad
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    #@b0
    move-result-wide v12

    #@b1
    double-to-int v12, v12

    #@b2
    .line 3859
    move-object/from16 v0, p3

    #@b4
    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    #@b7
    .line 3821
    return-void

    #@b8
    .line 3833
    .end local v7    # "textHorizontalOffset":I
    .end local v8    # "textVerticalOffset":I
    :cond_2
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@ba
    iget v9, v9, Landroid/widget/Editor;->mCursorCount:I

    #@bc
    const/4 v10, 0x2

    #@bd
    if-ne v9, v10, :cond_3

    #@bf
    .line 3836
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@c1
    iget-object v9, v9, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@c3
    const/4 v10, 0x0

    #@c4
    aget-object v9, v9, v10

    #@c6
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@c9
    move-result-object v2

    #@ca
    .line 3837
    .local v2, "firstCursorBounds":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@cc
    iget-object v9, v9, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@ce
    const/4 v10, 0x1

    #@cf
    aget-object v9, v9, v10

    #@d1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@d4
    move-result-object v6

    #@d5
    .line 3838
    .local v6, "secondCursorBounds":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    #@d7
    .line 3839
    iget v10, v2, Landroid/graphics/Rect;->left:I

    #@d9
    iget v11, v6, Landroid/graphics/Rect;->left:I

    #@db
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@de
    move-result v10

    #@df
    int-to-float v10, v10

    #@e0
    .line 3840
    iget v11, v2, Landroid/graphics/Rect;->top:I

    #@e2
    iget v12, v6, Landroid/graphics/Rect;->top:I

    #@e4
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    #@e7
    move-result v11

    #@e8
    int-to-float v11, v11

    #@e9
    .line 3841
    iget v12, v2, Landroid/graphics/Rect;->right:I

    #@eb
    iget v13, v6, Landroid/graphics/Rect;->right:I

    #@ed
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    #@f0
    move-result v12

    #@f1
    int-to-float v12, v12

    #@f2
    .line 3842
    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    #@f4
    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    #@f6
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    #@f9
    move-result v13

    #@fa
    .line 3843
    iget v14, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    #@fc
    .line 3842
    add-int/2addr v13, v14

    #@fd
    int-to-float v13, v13

    #@fe
    .line 3838
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    #@101
    goto/16 :goto_0

    #@103
    .line 3846
    .end local v2    # "firstCursorBounds":Landroid/graphics/Rect;
    .end local v6    # "secondCursorBounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@105
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@108
    move-result-object v9

    #@109
    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@10c
    move-result-object v3

    #@10d
    .line 3847
    .local v3, "layout":Landroid/text/Layout;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@10f
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@112
    move-result-object v9

    #@113
    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    #@116
    move-result v9

    #@117
    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    #@11a
    move-result v4

    #@11b
    .line 3848
    .local v4, "line":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@11d
    .line 3849
    iget-object v10, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    #@11f
    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@122
    move-result-object v10

    #@123
    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    #@126
    move-result v10

    #@127
    invoke-virtual {v3, v10}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@12a
    move-result v10

    #@12b
    .line 3848
    const/4 v11, 0x0

    #@12c
    invoke-static {v9, v11, v10}, Landroid/widget/Editor;->-wrap12(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    #@12f
    move-result v9

    #@130
    int-to-float v5, v9

    #@131
    .line 3850
    .local v5, "primaryHorizontal":F
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    #@133
    .line 3852
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    #@136
    move-result v10

    #@137
    int-to-float v10, v10

    #@138
    .line 3854
    add-int/lit8 v11, v4, 0x1

    #@13a
    invoke-virtual {v3, v11}, Landroid/text/Layout;->getLineTop(I)I

    #@13d
    move-result v11

    #@13e
    iget v12, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    #@140
    add-int/2addr v11, v12

    #@141
    int-to-float v11, v11

    #@142
    .line 3850
    invoke-virtual {v9, v5, v10, v5, v11}, Landroid/graphics/RectF;->set(FFFF)V

    #@145
    goto/16 :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3750
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    #@3
    .line 3751
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    #@6
    .line 3753
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    #@9
    move-result-object v0

    #@a
    .line 3754
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    #@c
    .line 3755
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 3757
    :cond_0
    const/4 v1, 0x1

    #@12
    return v1
.end method
