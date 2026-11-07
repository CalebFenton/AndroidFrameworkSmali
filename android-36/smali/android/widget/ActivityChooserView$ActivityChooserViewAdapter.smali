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
.field private static final greylist-max-o ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final greylist-max-o ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final greylist-max-o ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final greylist-max-o MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final greylist-max-o MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private greylist-max-o mDataModel:Landroid/widget/ActivityChooserModel;

.field private greylist-max-o mHighlightDefaultActivity:Z

.field private greylist-max-o mMaxActivityCount:I

.field private greylist-max-o mShowDefaultActivity:Z

.field private greylist-max-o mShowFooterView:Z

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

    .line 682
    iput-object p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 696
    const/4 p1, 0x4

    iput p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getActivityCount()I
    .registers 2

    .line 843
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public whitelist getCount()I
    .registers 4

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "count":I
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v1

    .line 733
    .local v1, "activityCount":I
    iget-boolean v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 734
    add-int/lit8 v1, v1, -0x1

    .line 736
    :cond_15
    iget v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 737
    iget-boolean v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v2, :cond_21

    .line 738
    add-int/lit8 v0, v0, 0x1

    .line 740
    :cond_21
    return v0
.end method

.method public greylist-max-o getDataModel()Landroid/widget/ActivityChooserModel;
    .registers 2

    .line 851
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    return-object v0
.end method

.method public greylist-max-o getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 832
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getHistorySize()I
    .registers 2

    .line 847
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .line 744
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 745
    .local v0, "itemViewType":I
    packed-switch v0, :pswitch_data_24

    .line 754
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 747
    :pswitch_d
    const/4 v1, 0x0

    return-object v1

    .line 749
    :pswitch_f
    iget-boolean v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 750
    add-int/lit8 p1, p1, 0x1

    .line 752
    :cond_1d
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1, p1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 759
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .line 718
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_d

    .line 719
    return v1

    .line 721
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getShowDefaultActivity()Z
    .registers 2

    .line 865
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 763
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 764
    .local v0, "itemViewType":I
    const v1, 0x1020016

    const v2, 0x1090029

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_9e

    .line 796
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 766
    :pswitch_15
    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v3, :cond_44

    .line 767
    :cond_1d
    iget-object v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v5}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 769
    invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V

    .line 770
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 771
    .local v1, "titleView":Landroid/widget/TextView;
    iget-object v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/ActivityChooserView;->access$400(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x104012b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_44
    return-object p2

    .line 776
    :pswitch_45
    if-eqz p2, :cond_50

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x10203c4

    if-eq v5, v6, :cond_5e

    .line 777
    :cond_50
    iget-object v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v5}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 780
    :cond_5e
    iget-object v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    # getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/ActivityChooserView;->access$500(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 782
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const v5, 0x1020006

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 783
    .local v5, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 784
    .local v6, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 787
    .restart local v1    # "titleView":Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-boolean v7, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-eqz v7, :cond_99

    if-nez p1, :cond_99

    iget-boolean v7, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eqz v7, :cond_99

    .line 790
    invoke-virtual {p2, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_9c

    .line 792
    :cond_99
    invoke-virtual {p2, v4}, Landroid/view/View;->setActivated(Z)V

    .line 794
    :goto_9c
    return-object p2

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_45
        :pswitch_15
    .end packed-switch
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 727
    const/4 v0, 0x3

    return v0
.end method

.method public greylist-max-o measureContentWidth()I
    .registers 9

    .line 803
    iget v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 804
    .local v0, "oldMaxActivityCount":I
    const v1, 0x7fffffff

    iput v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 806
    const/4 v1, 0x0

    .line 807
    .local v1, "contentWidth":I
    const/4 v2, 0x0

    .line 809
    .local v2, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 810
    .local v4, "widthMeasureSpec":I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 811
    .local v3, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v5

    .line 813
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_17
    if-ge v6, v5, :cond_2c

    .line 814
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v2, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 815
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 816
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 813
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 819
    .end local v6    # "i":I
    :cond_2c
    iput v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 821
    return v1
.end method

.method public greylist-max-o setDataModel(Landroid/widget/ActivityChooserModel;)V
    .registers 4
    .param p1, "dataModel"    # Landroid/widget/ActivityChooserModel;

    .line 705
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 706
    .local v0, "oldDataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_1d

    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 707
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmModelDataSetOberver(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 709
    :cond_1d
    iput-object p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    .line 710
    if-eqz p1, :cond_32

    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 711
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/widget/ActivityChooserView;->-$$Nest$fgetmModelDataSetOberver(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 713
    :cond_32
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 714
    return-void
.end method

.method public greylist-max-o setMaxActivityCount(I)V
    .registers 3
    .param p1, "maxActivityCount"    # I

    .line 825
    iget v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    if-eq v0, p1, :cond_9

    .line 826
    iput p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 827
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 829
    :cond_9
    return-void
.end method

.method public greylist-max-o setShowDefaultActivity(ZZ)V
    .registers 4
    .param p1, "showDefaultActivity"    # Z
    .param p2, "highlightDefaultActivity"    # Z

    .line 856
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_f

    .line 858
    :cond_8
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 859
    iput-boolean p2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 860
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 862
    :cond_f
    return-void
.end method

.method public greylist-max-o setShowFooterView(Z)V
    .registers 3
    .param p1, "showFooterView"    # Z

    .line 836
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_9

    .line 837
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 838
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 840
    :cond_9
    return-void
.end method
