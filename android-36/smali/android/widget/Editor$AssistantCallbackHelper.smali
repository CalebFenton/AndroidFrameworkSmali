.class public Landroid/widget/Editor$AssistantCallbackHelper;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssistantCallbackHelper"
.end annotation


# instance fields
.field private final blacklist mAssistClickHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/MenuItem;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHelper:Landroid/widget/SelectionActionModeHelper;

.field private blacklist mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/SelectionActionModeHelper;)V
    .registers 4
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "helper"    # Landroid/widget/SelectionActionModeHelper;
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

    .line 4527
    iput-object p1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    .line 4528
    iput-object p2, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mHelper:Landroid/widget/SelectionActionModeHelper;

    .line 4529
    return-void
.end method

.method private blacklist addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;IIILandroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "action"    # Landroid/app/RemoteAction;
    .param p3, "itemId"    # I
    .param p4, "order"    # I
    .param p5, "showAsAction"    # I
    .param p6, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 4595
    const v0, 0x1020041

    invoke-virtual {p2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v0, p3, p4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 4596
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 4597
    .local v0, "item":Landroid/view/MenuItem;
    invoke-virtual {p2}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4598
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 4600
    :cond_2e
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4601
    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    .line 4602
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v2}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 4601
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4603
    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/widget/Editor$AccessibilitySmartActions;->-$$Nest$maddAction(Landroid/widget/Editor$AccessibilitySmartActions;Landroid/app/RemoteAction;)V

    .line 4604
    if-eqz p6, :cond_4c

    .line 4605
    invoke-interface {v0, p6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4607
    :cond_4c
    return-object v0
.end method

.method private blacklist clearAssistMenuItems(Landroid/view/Menu;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 4611
    const/4 v0, 0x0

    .line 4612
    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 4613
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 4614
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const v3, 0x1020041

    if-ne v2, v3, :cond_1c

    .line 4615
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 4616
    goto :goto_1

    .line 4618
    :cond_1c
    nop

    .end local v1    # "menuItem":Landroid/view/MenuItem;
    add-int/lit8 v0, v0, 0x1

    .line 4619
    goto :goto_1

    .line 4620
    :cond_20
    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/Editor$AccessibilitySmartActions;->-$$Nest$mreset(Landroid/widget/Editor$AccessibilitySmartActions;)V

    .line 4621
    return-void
.end method

.method private blacklist createAssistMenuItemPendingIntentRequestCode()I
    .registers 4

    .line 4637
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4640
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 4638
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 4639
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4638
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4640
    invoke-interface {v0}, Ljava/lang/CharSequence;->hashCode()I

    move-result v0

    goto :goto_34

    .line 4641
    :cond_33
    const/4 v0, 0x0

    .line 4637
    :goto_34
    return v0
.end method

.method private blacklist hasLegacyAssistItem(Landroid/view/textclassifier/TextClassification;)Z
    .registers 3
    .param p1, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 4625
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    .line 4626
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4625
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4626
    :cond_10
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 4627
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 4625
    :goto_20
    return v0
.end method

.method private blacklist shouldEnableAssistMenuItems()Z
    .registers 2

    .line 4631
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 4632
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    .line 4633
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartTextShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 4631
    :goto_23
    return v0
.end method


# virtual methods
.method public blacklist clearCallbackHandlers()V
    .registers 2

    .line 4535
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4536
    return-void
.end method

.method public blacklist getOnClickListener(Landroid/view/MenuItem;)Landroid/view/View$OnClickListener;
    .registers 3
    .param p1, "key"    # Landroid/view/MenuItem;

    .line 4542
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public blacklist onAssistMenuItemClicked(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "assistMenuItem"    # Landroid/view/MenuItem;

    .line 4648
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x1020041

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 4650
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    .line 4651
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 4652
    .local v0, "textClassification":Landroid/view/textclassifier/TextClassification;
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->shouldEnableAssistMenuItems()Z

    move-result v1

    if-eqz v1, :cond_56

    if-nez v0, :cond_23

    goto :goto_56

    .line 4657
    :cond_23
    invoke-virtual {p0, p1}, Landroid/widget/Editor$AssistantCallbackHelper;->getOnClickListener(Landroid/view/MenuItem;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 4658
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    if-nez v1, :cond_45

    .line 4659
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 4660
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_45

    .line 4661
    iget-object v4, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 4663
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 4664
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->createAssistMenuItemPendingIntentRequestCode()I

    move-result v5

    .line 4662
    invoke-static {v4, v3, v5}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 4661
    invoke-static {v4}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 4667
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_45
    if-eqz v1, :cond_55

    .line 4668
    iget-object v3, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4669
    iget-object v3, p0, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 4672
    :cond_55
    return v2

    .line 4654
    .end local v1    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_56
    :goto_56
    return v2
.end method

.method public blacklist updateAssistMenuItems(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 13
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 4551
    iget-object v0, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 4552
    .local v0, "textClassification":Landroid/view/textclassifier/TextClassification;
    iget-object v1, p0, Landroid/widget/Editor$AssistantCallbackHelper;->mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

    if-ne v1, v0, :cond_b

    .line 4554
    return-void

    .line 4556
    :cond_b
    invoke-direct {p0, p1}, Landroid/widget/Editor$AssistantCallbackHelper;->clearAssistMenuItems(Landroid/view/Menu;)V

    .line 4557
    if-nez v0, :cond_11

    .line 4558
    return-void

    .line 4560
    :cond_11
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->shouldEnableAssistMenuItems()Z

    move-result v1

    if-nez v1, :cond_18

    .line 4561
    return-void

    .line 4563
    :cond_18
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_45

    .line 4565
    nop

    .line 4566
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/RemoteAction;

    .line 4565
    const v5, 0x1020041

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v8, p2

    .end local p1    # "menu":Landroid/view/Menu;
    .end local p2    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    .local v3, "menu":Landroid/view/Menu;
    .local v8, "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-direct/range {v2 .. v8}, Landroid/widget/Editor$AssistantCallbackHelper;->addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;IIILandroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4569
    move-object v1, v2

    move-object v7, v8

    .end local v8    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    .local v7, "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    .local p1, "item":Landroid/view/MenuItem;
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .end local p1    # "item":Landroid/view/MenuItem;
    goto :goto_8e

    .line 4570
    .end local v3    # "menu":Landroid/view/Menu;
    .end local v7    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    .local p1, "menu":Landroid/view/Menu;
    .restart local p2    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    :cond_45
    move-object v1, p0

    move-object v3, p1

    move-object v7, p2

    .end local p1    # "menu":Landroid/view/Menu;
    .end local p2    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    .restart local v3    # "menu":Landroid/view/Menu;
    .restart local v7    # "listener":Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-direct {p0, v0}, Landroid/widget/Editor$AssistantCallbackHelper;->hasLegacyAssistItem(Landroid/view/textclassifier/TextClassification;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 4572
    nop

    .line 4574
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 4572
    const p2, 0x1020041

    invoke-interface {v3, p2, p2, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4575
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4576
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p1

    .line 4577
    .local p1, "item":Landroid/view/MenuItem;
    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4578
    iget-object p2, v1, Landroid/widget/Editor$AssistantCallbackHelper;->mAssistClickHandlers:Ljava/util/Map;

    iget-object v2, v1, Landroid/widget/Editor$AssistantCallbackHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 4579
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4580
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 4581
    invoke-direct {p0}, Landroid/widget/Editor$AssistantCallbackHelper;->createAssistMenuItemPendingIntentRequestCode()I

    move-result v5

    .line 4579
    invoke-static {v2, v4, v5}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4578
    invoke-static {v2}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    .line 4570
    .end local p1    # "item":Landroid/view/MenuItem;
    :cond_8e
    :goto_8e
    nop

    .line 4583
    :goto_8f
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4584
    .local p1, "count":I
    const/4 p2, 0x1

    .local p2, "i":I
    :goto_98
    if-ge p2, p1, :cond_b4

    .line 4586
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteAction;

    add-int/lit8 v4, p2, 0x32

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    .end local v3    # "menu":Landroid/view/Menu;
    .local v2, "menu":Landroid/view/Menu;
    invoke-direct/range {v1 .. v7}, Landroid/widget/Editor$AssistantCallbackHelper;->addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;IIILandroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4584
    move-object v3, v2

    .end local v2    # "menu":Landroid/view/Menu;
    .restart local v3    # "menu":Landroid/view/Menu;
    add-int/lit8 p2, p2, 0x1

    goto :goto_98

    .line 4590
    .end local p2    # "i":I
    :cond_b4
    iput-object v0, v1, Landroid/widget/Editor$AssistantCallbackHelper;->mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 4591
    return-void
.end method
