.class final Landroid/widget/Editor$ProcessTextIntentActionsHandler;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessTextIntentActionsHandler"
.end annotation


# instance fields
.field private final mAccessibilityActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessibilityIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditor:Landroid/widget/Editor;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 5573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 5569
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    #@a
    .line 5571
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 5570
    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    #@11
    .line 5574
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/widget/Editor;

    #@17
    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    #@19
    .line 5575
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    #@1b
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/widget/TextView;

    #@25
    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    #@27
    .line 5577
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    #@29
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@30
    move-result-object v0

    #@31
    .line 5576
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/content/pm/PackageManager;

    #@37
    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    #@39
    .line 5573
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;)V

    #@3
    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 5665
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 5666
    const-string/jumbo v1, "android.intent.action.PROCESS_TEXT"

    #@8
    .line 5665
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@b
    move-result-object v0

    #@c
    .line 5667
    const-string/jumbo v1, "text/plain"

    #@f
    .line 5665
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 5659
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntent()Landroid/content/Intent;

    #@3
    move-result-object v1

    #@4
    .line 5660
    const-string/jumbo v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    #@7
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    #@9
    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    const/4 v0, 0x0

    #@10
    .line 5659
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@13
    move-result-object v0

    #@14
    .line 5661
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@16
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@18
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1a
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1c
    .line 5659
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 5660
    :cond_0
    const/4 v0, 0x1

    #@22
    goto :goto_0
.end method

.method private fireIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5644
    if-eqz p1, :cond_0

    #@3
    const-string/jumbo v0, "android.intent.action.PROCESS_TEXT"

    #@6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 5645
    const-string/jumbo v0, "android.intent.extra.PROCESS_TEXT"

    #@13
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    #@15
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 5646
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    #@1e
    iput-boolean v2, v0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    #@20
    .line 5647
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    #@22
    const/16 v1, 0x64

    #@24
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->startActivityForResult(Landroid/content/Intent;I)V

    #@27
    .line 5648
    return v2

    #@28
    .line 5650
    :cond_0
    const/4 v0, 0x0

    #@29
    return v0
.end method

.method private getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 5671
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getSupportedActivities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5654
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v0

    #@a
    .line 5655
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntent()Landroid/content/Intent;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method


# virtual methods
.method public initializeAccessibilityActions()V
    .locals 8

    #@0
    .prologue
    .line 5608
    iget-object v5, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 5609
    iget-object v5, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    #@a
    .line 5610
    const/4 v1, 0x0

    #@b
    .line 5611
    .local v1, "i":I
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getSupportedActivities()Ljava/util/List;

    #@e
    move-result-object v5

    #@f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v4

    #@13
    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@1f
    .line 5612
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v2, v1, 0x1

    #@21
    .end local v1    # "i":I
    .local v2, "i":I
    const v5, 0x10000100

    #@24
    add-int v0, v5, v1

    #@26
    .line 5613
    .local v0, "actionId":I
    iget-object v5, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    #@28
    .line 5615
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@2a
    .line 5616
    invoke-direct {p0, v3}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    #@2d
    move-result-object v7

    #@2e
    .line 5615
    invoke-direct {v6, v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    #@31
    .line 5613
    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@34
    .line 5617
    iget-object v5, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    #@36
    .line 5618
    invoke-direct {p0, v3}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    #@39
    move-result-object v6

    #@3a
    .line 5617
    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    move v1, v2

    #@3e
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@3f
    .line 5607
    .end local v0    # "actionId":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 5628
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 5629
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@11
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@14
    .line 5628
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 5627
    :cond_0
    return-void
.end method

.method public onInitializeMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 5584
    const/4 v0, 0x0

    #@2
    .line 5585
    .local v0, "i":I
    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getSupportedActivities()Ljava/util/List;

    #@5
    move-result-object v4

    #@6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/content/pm/ResolveInfo;

    #@16
    .line 5587
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v1, v0, 0x1

    #@18
    .end local v0    # "i":I
    .local v1, "i":I
    add-int/lit8 v4, v0, 0xa

    #@1a
    .line 5588
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    #@1d
    move-result-object v5

    #@1e
    .line 5586
    invoke-interface {p1, v6, v6, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@21
    move-result-object v4

    #@22
    .line 5589
    invoke-direct {p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    #@25
    move-result-object v5

    #@26
    .line 5586
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    #@29
    move-result-object v4

    #@2a
    .line 5590
    const/4 v5, 0x1

    #@2b
    .line 5586
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@2e
    move v0, v1

    #@2f
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@30
    .line 5583
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(I)Z
    .locals 1
    .param p1, "actionId"    # I

    #@0
    .prologue
    .line 5640
    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/Intent;

    #@8
    invoke-direct {p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->fireIntent(Landroid/content/Intent;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public performMenuItemAction(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 5601
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->fireIntent(Landroid/content/Intent;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
