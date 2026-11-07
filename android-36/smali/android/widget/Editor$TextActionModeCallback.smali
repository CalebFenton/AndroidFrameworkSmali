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
.field private final greylist-max-o mHandleHeight:I

.field private final greylist-max-o mHasSelection:Z

.field private final blacklist mHelper:Landroid/widget/Editor$AssistantCallbackHelper;

.field private final greylist-max-o mSelectionBounds:Landroid/graphics/RectF;

.field private final greylist-max-o mSelectionPath:Landroid/graphics/Path;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor;I)V
    .registers 6
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4691
    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 4684
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 4685
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 4688
    new-instance v0, Landroid/widget/Editor$AssistantCallbackHelper;

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 4689
    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$AssistantCallbackHelper;-><init>(Landroid/widget/Editor;Landroid/widget/SelectionActionModeHelper;)V

    iput-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHelper:Landroid/widget/Editor$AssistantCallbackHelper;

    .line 4692
    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    iget-boolean v1, p1, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v1, :cond_2d

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2d

    goto :goto_2f

    :cond_2d
    move v1, v0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v1, 0x1

    :goto_30
    iput-boolean v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    .line 4694
    iget-boolean v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v1, :cond_5c

    .line 4695
    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    .line 4696
    .local v1, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v2

    if-nez v2, :cond_49

    .line 4698
    invoke-virtual {p1, v0}, Landroid/widget/Editor;->loadHandleDrawables(Z)V

    .line 4699
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$minitHandles(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 4700
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 4702
    :cond_49
    iget-object v0, p1, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 4703
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget-object p1, p1, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 4704
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    .line 4702
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 4705
    .end local v1    # "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    goto :goto_70

    .line 4706
    :cond_5c
    invoke-virtual {p1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    .line 4707
    .local v1, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v1, :cond_6e

    .line 4708
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    .line 4709
    iget-object p1, p1, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    goto :goto_70

    .line 4711
    :cond_6e
    iput v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 4714
    .end local v1    # "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    :goto_70
    return-void
.end method

.method private greylist-max-o getCustomCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .line 4746
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_9

    .line 4747
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_d

    .line 4748
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 4746
    :goto_d
    return-object v0
.end method

.method private greylist-max-o populateMenuWithItems(Landroid/view/Menu;)V
    .registers 8
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4752
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 4753
    const/4 v0, 0x4

    const v3, 0x1040003

    const v4, 0x1020020

    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4755
    const/16 v3, 0x78

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 4756
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4759
    :cond_22
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 4760
    const/4 v0, 0x5

    const v3, 0x1040001

    const v4, 0x1020021

    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4762
    const/16 v3, 0x63

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 4763
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4766
    :cond_42
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 4767
    const/4 v0, 0x6

    const v3, 0x104000b

    const v4, 0x1020022

    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4769
    const/16 v3, 0x76

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 4770
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4773
    :cond_62
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7d

    .line 4774
    const/4 v0, 0x7

    const v3, 0x10409b7

    const v4, 0x1020035

    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4776
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4779
    :cond_7d
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 4780
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 4781
    .local v0, "selected":Ljava/lang/String;
    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 4782
    :cond_9b
    const/16 v3, 0xa

    const v4, 0x104001a

    const v5, 0x1020043

    invoke-interface {p1, v2, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 4784
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4788
    .end local v0    # "selected":Ljava/lang/String;
    :cond_aa
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 4789
    const/16 v0, 0xb

    const v3, 0x1040019

    const v4, 0x1020031

    invoke-interface {p1, v2, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4794
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4797
    :cond_c5
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 4798
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 4799
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHelper:Landroid/widget/Editor$AssistantCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/Editor$AssistantCallbackHelper;->updateAssistMenuItems(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 4800
    return-void
.end method

.method private greylist-max-o updateReplaceItem(Landroid/view/Menu;)V
    .registers 9
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4828
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    .line 4829
    .local v0, "canReplace":Z
    :goto_19
    const v3, 0x1020034

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_24

    move v4, v1

    goto :goto_25

    :cond_24
    move v4, v2

    .line 4830
    .local v4, "replaceItemExists":Z
    :goto_25
    if-eqz v0, :cond_36

    if-nez v4, :cond_36

    .line 4831
    const/16 v5, 0x9

    const v6, 0x1040918

    invoke-interface {p1, v2, v3, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 4833
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3d

    .line 4834
    :cond_36
    if-nez v0, :cond_3d

    if-eqz v4, :cond_3d

    .line 4835
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 4837
    :cond_3d
    :goto_3d
    return-void
.end method

.method private greylist-max-o updateSelectAllItem(Landroid/view/Menu;)V
    .registers 9
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4816
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v0

    .line 4817
    .local v0, "canSelectAll":Z
    const v1, 0x102001f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    move v2, v4

    .line 4818
    .local v2, "selectAllItemExists":Z
    :goto_18
    if-eqz v0, :cond_29

    if-nez v2, :cond_29

    .line 4819
    const/16 v5, 0x8

    const v6, 0x104000d

    invoke-interface {p1, v4, v1, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4821
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_30

    .line 4822
    :cond_29
    if-nez v0, :cond_30

    if-eqz v2, :cond_30

    .line 4823
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 4825
    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method public whitelist onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 4841
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 4842
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SelectionActionModeHelper;->onSelectionAction(ILjava/lang/String;)V

    .line 4844
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 4845
    return v1

    .line 4847
    :cond_21
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 4848
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_2e

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4849
    return v1

    .line 4851
    :cond_2e
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const v3, 0x1020041

    if-ne v2, v3, :cond_40

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHelper:Landroid/widget/Editor$AssistantCallbackHelper;

    invoke-virtual {v2, p2}, Landroid/widget/Editor$AssistantCallbackHelper;->onAssistMenuItemClicked(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 4852
    return v1

    .line 4854
    :cond_40
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    return v1
.end method

.method public whitelist onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4718
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHelper:Landroid/widget/Editor$AssistantCallbackHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$AssistantCallbackHelper;->clearCallbackHandlers()V

    .line 4720
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 4721
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 4722
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 4723
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    .line 4725
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v1

    .line 4726
    .local v1, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v1, :cond_3a

    .line 4727
    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 4729
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 4730
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4729
    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4731
    const/4 v0, 0x0

    return v0

    .line 4735
    :cond_3a
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->canProcessText()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 4736
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v2, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;)V

    .line 4739
    :cond_4d
    iget-boolean v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v2, :cond_66

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v2

    if-nez v2, :cond_66

    .line 4740
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 4742
    :cond_66
    return v0
.end method

.method public whitelist onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 4860
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onDestroyActionMode()V

    .line 4861
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmTextActionMode(Landroid/widget/Editor;Landroid/view/ActionMode;)V

    .line 4862
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 4863
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_18

    .line 4864
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4867
    :cond_18
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmPreserveSelection(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 4873
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 4874
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4873
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4877
    :cond_39
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_46

    .line 4878
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 4881
    :cond_46
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHelper:Landroid/widget/Editor$AssistantCallbackHelper;

    invoke-virtual {v1}, Landroid/widget/Editor$AssistantCallbackHelper;->clearCallbackHandlers()V

    .line 4882
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/widget/Editor;->-$$Nest$fputmRequestingLinkActionMode(Landroid/widget/Editor;Z)V

    .line 4883
    return-void
.end method

.method public whitelist onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 14
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 4887
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1a

    goto/16 :goto_c1

    .line 4891
    :cond_1a
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStartTransformed()I

    move-result v0

    .line 4892
    .local v0, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEndTransformed()I

    move-result v1

    .line 4893
    .local v1, "selectionEnd":I
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 4894
    .local v2, "layout":Landroid/text/Layout;
    if-eq v0, v1, :cond_57

    .line 4896
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 4897
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1, v3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 4898
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4899
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_79

    .line 4902
    :cond_57
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 4903
    .local v3, "line":I
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 4904
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/widget/Editor;->-$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v4

    int-to-float v4, v4

    .line 4905
    .local v4, "primaryHorizontal":F
    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 4907
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    int-to-float v6, v6

    .line 4909
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iget v8, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 4905
    invoke-virtual {v5, v4, v6, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4912
    .end local v3    # "line":I
    .end local v4    # "primaryHorizontal":F
    :goto_79
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    .line 4913
    .local v3, "textHorizontalOffset":I
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    .line 4914
    .local v4, "textVerticalOffset":I
    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    int-to-float v6, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 4915
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 4916
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v7, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 4917
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget-object v8, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    float-to-double v8, v8

    .line 4918
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 4914
    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 4919
    return-void

    .line 4888
    .end local v0    # "selectionStart":I
    .end local v1    # "selectionEnd":I
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "textHorizontalOffset":I
    .end local v4    # "textVerticalOffset":I
    :cond_c1
    :goto_c1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4889
    return-void
.end method

.method public whitelist onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4804
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 4805
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 4806
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHelper:Landroid/widget/Editor$AssistantCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/Editor$AssistantCallbackHelper;->updateAssistMenuItems(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 4808
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 4809
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_17

    .line 4810
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 4812
    :cond_17
    const/4 v1, 0x1

    return v1
.end method
