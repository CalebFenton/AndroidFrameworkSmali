.class Landroid/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ActivityChooserView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 584
    iput-object p1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;)V

    return-void
.end method

.method private greylist-max-o notifyOnDismissListener()V
    .registers 2

    .line 661
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmOnDismissListener(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 662
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmOnDismissListener(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 664
    :cond_11
    return-void
.end method

.method private greylist-max-o startActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 668
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    .line 675
    goto :goto_3d

    .line 669
    :catch_a
    move-exception v0

    .line 670
    .local v0, "re":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$100(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 671
    .local v1, "appLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/ActivityChooserView;->access$200(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040131

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "message":Ljava/lang/String;
    const-string v3, "ActivityChooserView"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->access$300(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 676
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    .end local v2    # "message":Ljava/lang/String;
    :goto_3d
    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 621
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmDefaultActivityButton(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_3e

    .line 622
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 623
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 624
    .local v0, "defaultActivity":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    .line 625
    .local v1, "index":I
    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v2}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 626
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_3d

    .line 627
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 628
    invoke-direct {p0, v2, v0}, Landroid/widget/ActivityChooserView$Callbacks;->startActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 630
    .end local v0    # "defaultActivity":Landroid/content/pm/ResolveInfo;
    .end local v1    # "index":I
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_3d
    goto :goto_57

    :cond_3e
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmExpandActivityOverflowButton(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_58

    .line 631
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserView;->-$$Nest$fputmIsSelectingDefaultActivity(Landroid/widget/ActivityChooserView;Z)V

    .line 632
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmInitialActivityCount(Landroid/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserView;->-$$Nest$mshowPopupUnchecked(Landroid/widget/ActivityChooserView;I)V

    .line 636
    :goto_57
    return-void

    .line 634
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist onDismiss()V
    .registers 3

    .line 654
    invoke-direct {p0}, Landroid/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 655
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_11

    .line 656
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 658
    :cond_11
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 589
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 590
    .local v0, "adapter":Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-virtual {v0, p3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v1

    .line 591
    .local v1, "itemViewType":I
    packed-switch v1, :pswitch_data_72

    .line 615
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 593
    :pswitch_13
    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    const v3, 0x7fffffff

    invoke-static {v2, v3}, Landroid/widget/ActivityChooserView;->-$$Nest$mshowPopupUnchecked(Landroid/widget/ActivityChooserView;I)V

    .line 594
    goto :goto_71

    .line 596
    :pswitch_1c
    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 597
    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v2}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmIsSelectingDefaultActivity(Landroid/widget/ActivityChooserView;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 599
    if-lez p3, :cond_71

    .line 600
    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v2}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_71

    .line 605
    :cond_39
    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v2}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result v2

    if-eqz v2, :cond_47

    move v2, p3

    goto :goto_49

    :cond_47
    add-int/lit8 v2, p3, 0x1

    :goto_49
    move p3, v2

    .line 606
    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v2}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 607
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_70

    .line 608
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 610
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2, v3}, Landroid/widget/ActivityChooserView$Callbacks;->startActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 613
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_70
    nop

    .line 617
    :cond_71
    :goto_71
    return-void

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method public whitelist onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 641
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmDefaultActivityButton(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_26

    .line 642
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_25

    .line 643
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserView;->-$$Nest$fputmIsSelectingDefaultActivity(Landroid/widget/ActivityChooserView;Z)V

    .line 644
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    iget-object v2, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v2}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmInitialActivityCount(Landroid/widget/ActivityChooserView;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/widget/ActivityChooserView;->-$$Nest$mshowPopupUnchecked(Landroid/widget/ActivityChooserView;I)V

    .line 649
    :cond_25
    return v1

    .line 647
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
