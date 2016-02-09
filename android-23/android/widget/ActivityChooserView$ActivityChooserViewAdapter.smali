.class Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroid/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;

    #@0
    .prologue
    .line 675
    iput-object p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 689
    const/4 v0, 0x4

    #@6
    iput v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@8
    .line 675
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;)V

    #@3
    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 1

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    #@2
    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCount()I
    .locals 3

    #@0
    .prologue
    .line 724
    const/4 v1, 0x0

    #@1
    .line 725
    .local v1, "count":I
    iget-object v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    #@3
    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    #@6
    move-result v0

    #@7
    .line 726
    .local v0, "activityCount":I
    iget-boolean v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@9
    if-nez v2, :cond_0

    #@b
    iget-object v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    #@d
    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 727
    add-int/lit8 v0, v0, -0x1

    #@15
    .line 729
    :cond_0
    iget v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@17
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result v1

    #@1b
    .line 730
    iget-boolean v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 731
    add-int/lit8 v1, v1, 0x1

    #@21
    .line 733
    :cond_1
    return v1
.end method

.method public getDataModel()Landroid/widget/ActivityChooserModel;
    .locals 1

    #@0
    .prologue
    .line 844
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    #@2
    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 1

    #@0
    .prologue
    .line 825
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    #@2
    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHistorySize()I
    .locals 1

    #@0
    .prologue
    .line 840
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    #@2
    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getHistorySize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 737
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    #@4
    move-result v0

    #@5
    .line 738
    .local v0, "itemViewType":I
    packed-switch v0, :pswitch_data_0

    #@8
    .line 747
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v1

    #@e
    .line 740
    :pswitch_0
    return-object v1

    #@f
    .line 742
    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@11
    if-nez v1, :cond_0

    #@13
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    #@15
    invoke-virtual {v1}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    #@18
    move-result-object v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 743
    add-int/lit8 p1, p1, 0x1

    #@1d
    .line 745
    :cond_0
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    #@1f
    invoke-virtual {v1, p1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 738
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 752
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 711
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    if-ne p1, v0, :cond_0

    #@c
    .line 712
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 714
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public getShowDefaultActivity()Z
    .locals 1

    #@0
    .prologue
    .line 858
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@2
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const v10, 0x1090022

    #@3
    const v9, 0x1020016

    #@6
    const/4 v8, 0x1

    #@7
    const/4 v7, 0x0

    #@8
    .line 756
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    #@b
    move-result v2

    #@c
    .line 757
    .local v2, "itemViewType":I
    packed-switch v2, :pswitch_data_0

    #@f
    .line 789
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v5

    #@15
    .line 759
    :pswitch_0
    if-eqz p2, :cond_0

    #@17
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@1a
    move-result v5

    #@1b
    if-eq v5, v8, :cond_1

    #@1d
    .line 760
    :cond_0
    iget-object v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@1f
    invoke-virtual {v5}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    #@22
    move-result-object v5

    #@23
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v10, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@2a
    move-result-object p2

    #@2b
    .line 762
    invoke-virtual {p2, v8}, Landroid/view/View;->setId(I)V

    #@2e
    .line 763
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Landroid/widget/TextView;

    #@34
    .line 764
    .local v4, "titleView":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@36
    invoke-static {v5}, Landroid/widget/ActivityChooserView;->-get1(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    #@39
    move-result-object v5

    #@3a
    .line 765
    const v6, 0x10404a2

    #@3d
    .line 764
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@44
    .line 767
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-object p2

    #@45
    .line 769
    :pswitch_1
    if-eqz p2, :cond_2

    #@47
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@4a
    move-result v5

    #@4b
    const v6, 0x10202ed

    #@4e
    if-eq v5, v6, :cond_3

    #@50
    .line 770
    :cond_2
    iget-object v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@52
    invoke-virtual {v5}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    #@55
    move-result-object v5

    #@56
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5, v10, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@5d
    move-result-object p2

    #@5e
    .line 773
    :cond_3
    iget-object v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@60
    invoke-static {v5}, Landroid/widget/ActivityChooserView;->-get1(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@67
    move-result-object v3

    #@68
    .line 775
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const v5, 0x1020006

    #@6b
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6e
    move-result-object v1

    #@6f
    check-cast v1, Landroid/widget/ImageView;

    #@71
    .line 776
    .local v1, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@77
    .line 777
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@7e
    .line 779
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@81
    move-result-object v4

    #@82
    check-cast v4, Landroid/widget/TextView;

    #@84
    .line 780
    .restart local v4    # "titleView":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@8b
    .line 782
    iget-boolean v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@8d
    if-eqz v5, :cond_4

    #@8f
    if-nez p1, :cond_4

    #@91
    iget-boolean v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    #@93
    if-eqz v5, :cond_4

    #@95
    .line 783
    invoke-virtual {p2, v8}, Landroid/view/View;->setActivated(Z)V

    #@98
    .line 787
    :goto_0
    return-object p2

    #@99
    .line 785
    :cond_4
    invoke-virtual {p2, v7}, Landroid/view/View;->setActivated(Z)V

    #@9c
    goto :goto_0

    #@9d
    .line 757
    nop

    #@9e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 720
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public measureContentWidth()I
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 796
    iget v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@3
    .line 797
    .local v5, "oldMaxActivityCount":I
    const v7, 0x7fffffff

    #@6
    iput v7, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@8
    .line 799
    const/4 v0, 0x0

    #@9
    .line 800
    .local v0, "contentWidth":I
    const/4 v4, 0x0

    #@a
    .line 802
    .local v4, "itemView":Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d
    move-result v6

    #@e
    .line 803
    .local v6, "widthMeasureSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@11
    move-result v2

    #@12
    .line 804
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    #@15
    move-result v1

    #@16
    .line 806
    .local v1, "count":I
    const/4 v3, 0x0

    #@17
    .end local v4    # "itemView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@19
    .line 807
    const/4 v7, 0x0

    #@1a
    invoke-virtual {p0, v3, v4, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@1d
    move-result-object v4

    #@1e
    .line 808
    .local v4, "itemView":Landroid/view/View;
    invoke-virtual {v4, v6, v2}, Landroid/view/View;->measure(II)V

    #@21
    .line 809
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@24
    move-result v7

    #@25
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v0

    #@29
    .line 806
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 812
    .end local v4    # "itemView":Landroid/view/View;
    :cond_0
    iput v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@2e
    .line 814
    return v0
.end method

.method public setDataModel(Landroid/widget/ActivityChooserModel;)V
    .locals 2
    .param p1, "dataModel"    # Landroid/widget/ActivityChooserModel;

    #@0
    .prologue
    .line 698
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    #@9
    move-result-object v0

    #@a
    .line 699
    .local v0, "oldDataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    #@c
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@e
    invoke-virtual {v1}, Landroid/widget/ActivityChooserView;->isShown()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 700
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@16
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->-get6(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    #@1d
    .line 702
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    #@1f
    .line 703
    if-eqz p1, :cond_1

    #@21
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@23
    invoke-virtual {v1}, Landroid/widget/ActivityChooserView;->isShown()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 704
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #@2b
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->-get6(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p1, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    #@32
    .line 706
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    #@35
    .line 697
    return-void
.end method

.method public setMaxActivityCount(I)V
    .locals 1
    .param p1, "maxActivityCount"    # I

    #@0
    .prologue
    .line 818
    iget v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 819
    iput p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    #@6
    .line 820
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    #@9
    .line 817
    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 1
    .param p1, "showDefaultActivity"    # Z
    .param p2, "highlightDefaultActivity"    # Z

    #@0
    .prologue
    .line 849
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 850
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    #@6
    if-eq v0, p2, :cond_1

    #@8
    .line 851
    :cond_0
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    #@a
    .line 852
    iput-boolean p2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    #@c
    .line 853
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    #@f
    .line 848
    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 1
    .param p1, "showFooterView"    # Z

    #@0
    .prologue
    .line 829
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 830
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    #@6
    .line 831
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    #@9
    .line 828
    :cond_0
    return-void
.end method
