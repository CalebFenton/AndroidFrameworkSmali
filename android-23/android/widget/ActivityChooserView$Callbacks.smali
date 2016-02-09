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
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;

    #@0
    .prologue
    .line 577
    iput-object p1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$Callbacks;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;)V

    #@3
    return-void
.end method

.method private notifyOnDismissListener()V
    .locals 1

    #@0
    .prologue
    .line 654
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-get7(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 655
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@a
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-get7(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    #@11
    .line 653
    :cond_0
    return-void
.end method

.method private startActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 661
    :try_start_0
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@3
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-get1(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 659
    :goto_0
    return-void

    #@b
    .line 662
    :catch_0
    move-exception v2

    #@c
    .line 663
    .local v2, "re":Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@e
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-get1(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {p2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@19
    move-result-object v0

    #@1a
    .line 664
    .local v0, "appLabel":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@1c
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-get1(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    #@1f
    move-result-object v3

    #@20
    const/4 v4, 0x1

    #@21
    new-array v4, v4, [Ljava/lang/Object;

    #@23
    .line 665
    aput-object v0, v4, v6

    #@25
    const v5, 0x1040474

    #@28
    .line 664
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 666
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v3, "ActivityChooserView"

    #@2f
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 667
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@34
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-get1(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    #@37
    move-result-object v3

    #@38
    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    #@3f
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 614
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-get2(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    #@5
    move-result-object v3

    #@6
    if-ne p1, v3, :cond_1

    #@8
    .line 615
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@a
    invoke-virtual {v3}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    #@d
    .line 616
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@f
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    #@16
    move-result-object v0

    #@17
    .line 617
    .local v0, "defaultActivity":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@19
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Landroid/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    #@24
    move-result v1

    #@25
    .line 618
    .local v1, "index":I
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@27
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, v1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    #@32
    move-result-object v2

    #@33
    .line 619
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    #@35
    .line 620
    const/high16 v3, 0x80000

    #@37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3a
    .line 621
    invoke-direct {p0, v2, v0}, Landroid/widget/ActivityChooserView$Callbacks;->startActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    #@3d
    .line 613
    .end local v0    # "defaultActivity":Landroid/content/pm/ResolveInfo;
    .end local v1    # "index":I
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    #@3e
    .line 623
    :cond_1
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@40
    invoke-static {v3}, Landroid/widget/ActivityChooserView;->-get3(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    #@43
    move-result-object v3

    #@44
    if-ne p1, v3, :cond_2

    #@46
    .line 624
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@48
    const/4 v4, 0x0

    #@49
    invoke-static {v3, v4}, Landroid/widget/ActivityChooserView;->-set0(Landroid/widget/ActivityChooserView;Z)Z

    #@4c
    .line 625
    iget-object v3, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@4e
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@50
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->-get4(Landroid/widget/ActivityChooserView;)I

    #@53
    move-result v4

    #@54
    invoke-static {v3, v4}, Landroid/widget/ActivityChooserView;->-wrap1(Landroid/widget/ActivityChooserView;I)V

    #@57
    goto :goto_0

    #@58
    .line 627
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5a
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@5d
    throw v3
.end method

.method public onDismiss()V
    .locals 2

    #@0
    .prologue
    .line 647
    invoke-direct {p0}, Landroid/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    #@3
    .line 648
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@5
    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 649
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@b
    iget-object v0, v0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    #@11
    .line 646
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 582
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@6
    .line 583
    .local v0, "adapter":Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-virtual {v0, p3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    #@9
    move-result v1

    #@a
    .line 584
    .local v1, "itemViewType":I
    packed-switch v1, :pswitch_data_0

    #@d
    .line 608
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@12
    throw v4

    #@13
    .line 586
    :pswitch_0
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@15
    const v5, 0x7fffffff

    #@18
    invoke-static {v4, v5}, Landroid/widget/ActivityChooserView;->-wrap1(Landroid/widget/ActivityChooserView;I)V

    #@1b
    .line 581
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 589
    :pswitch_1
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@1e
    invoke-virtual {v4}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    #@21
    .line 590
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@23
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->-get5(Landroid/widget/ActivityChooserView;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 592
    if-lez p3, :cond_0

    #@2b
    .line 593
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@2d
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, p3}, Landroid/widget/ActivityChooserModel;->setDefaultActivity(I)V

    #@38
    goto :goto_0

    #@39
    .line 598
    :cond_1
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@3b
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_2

    #@45
    .line 599
    :goto_1
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@47
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4, p3}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    #@52
    move-result-object v2

    #@53
    .line 600
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    #@55
    .line 601
    const/high16 v4, 0x80000

    #@57
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5a
    .line 602
    iget-object v4, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@5c
    invoke-static {v4}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4, p3}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    #@67
    move-result-object v3

    #@68
    .line 603
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2, v3}, Landroid/widget/ActivityChooserView$Callbacks;->startActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    #@6b
    goto :goto_0

    #@6c
    .line 598
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 p3, p3, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 584
    nop

    #@70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 634
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@3
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-get2(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    #@6
    move-result-object v0

    #@7
    if-ne p1, v0, :cond_1

    #@9
    .line 635
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@b
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    #@12
    move-result v0

    #@13
    if-lez v0, :cond_0

    #@15
    .line 636
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@17
    invoke-static {v0, v2}, Landroid/widget/ActivityChooserView;->-set0(Landroid/widget/ActivityChooserView;Z)Z

    #@1a
    .line 637
    iget-object v0, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@1c
    iget-object v1, p0, Landroid/widget/ActivityChooserView$Callbacks;->this$0:Landroid/widget/ActivityChooserView;

    #@1e
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->-get4(Landroid/widget/ActivityChooserView;)I

    #@21
    move-result v1

    #@22
    invoke-static {v0, v1}, Landroid/widget/ActivityChooserView;->-wrap1(Landroid/widget/ActivityChooserView;I)V

    #@25
    .line 642
    :cond_0
    return v2

    #@26
    .line 640
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2b
    throw v0
.end method
