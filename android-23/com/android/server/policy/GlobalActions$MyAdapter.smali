.class Lcom/android/server/policy/GlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;)V

    #@3
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 640
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCount()I
    .locals 4

    #@0
    .prologue
    .line 617
    const/4 v1, 0x0

    #@1
    .line 619
    .local v1, "count":I
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@4
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v2, v3, :cond_3

    #@e
    .line 620
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@10
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/policy/GlobalActions$Action;

    #@1a
    .line 622
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@1c
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showDuringKeyguard()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 625
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2a
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_1

    #@30
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showBeforeProvisioning()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 628
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@38
    .line 619
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 630
    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_3
    return v1
.end method

.method public getItem(I)Lcom/android/server/policy/GlobalActions$Action;
    .locals 6
    .param p1, "position"    # I

    #@0
    .prologue
    .line 645
    const/4 v1, 0x0

    #@1
    .line 646
    .local v1, "filteredPos":I
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@4
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v2, v3, :cond_4

    #@e
    .line 647
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@10
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/policy/GlobalActions$Action;

    #@1a
    .line 648
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@1c
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showDuringKeyguard()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_3

    #@28
    .line 651
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2a
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_1

    #@30
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->showBeforeProvisioning()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3

    #@36
    .line 654
    :cond_1
    if-ne v1, p1, :cond_2

    #@38
    .line 655
    return-object v0

    #@39
    .line 657
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3b
    .line 646
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 660
    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v5, "position "

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    .line 661
    const-string/jumbo v5, " out of range of showable actions"

    #@53
    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 662
    const-string/jumbo v5, ", filtered count="

    #@5a
    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    .line 662
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    #@61
    move-result v5

    #@62
    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    .line 663
    const-string/jumbo v5, ", keyguardshowing="

    #@69
    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    .line 663
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@6f
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Z

    #@72
    move-result v5

    #@73
    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    .line 664
    const-string/jumbo v5, ", provisioned="

    #@7a
    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    .line 664
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@80
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Z

    #@83
    move-result v5

    #@84
    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 669
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 673
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@3
    move-result-object v0

    #@4
    .line 674
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@6
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/GlobalActions;

    #@c
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@f
    move-result-object v2

    #@10
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/server/policy/GlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->isEnabled()Z

    #@7
    move-result v0

    #@8
    return v0
.end method
