.class Landroid/widget/Spinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "dropDownTheme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 932
    iput-object p1, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@5
    .line 934
    instance-of v1, p1, Landroid/widget/ListAdapter;

    #@7
    if-eqz v1, :cond_0

    #@9
    move-object v1, p1

    #@a
    .line 935
    check-cast v1, Landroid/widget/ListAdapter;

    #@c
    iput-object v1, p0, Landroid/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    #@e
    .line 938
    :cond_0
    if-eqz p2, :cond_1

    #@10
    instance-of v1, p1, Landroid/widget/ThemedSpinnerAdapter;

    #@12
    if-eqz v1, :cond_1

    #@14
    move-object v0, p1

    #@15
    .line 939
    check-cast v0, Landroid/widget/ThemedSpinnerAdapter;

    #@17
    .line 940
    .local v0, "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    invoke-interface {v0}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    #@1a
    move-result-object v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 941
    invoke-interface {v0, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    #@20
    .line 931
    .end local v0    # "themedAdapter":Landroid/widget/ThemedSpinnerAdapter;
    :cond_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 987
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    #@2
    .line 988
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    #@4
    .line 989
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 991
    :cond_0
    const/4 v1, 0x1

    #@a
    return v1
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@8
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 963
    iget-object v1, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@8
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 951
    iget-object v1, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@8
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 955
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-nez v0, :cond_0

    #@4
    const-wide/16 v0, -0x1

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@9
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    #@c
    move-result-wide v0

    #@d
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1009
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 959
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/Spinner$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 1013
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    #@0
    .prologue
    .line 967
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@6
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1017
    invoke-virtual {p0}, Landroid/widget/Spinner$DropDownAdapter;->getCount()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1000
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    #@2
    .line 1001
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    #@4
    .line 1002
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1004
    :cond_0
    const/4 v1, 0x1

    #@a
    return v1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 971
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 972
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@9
    .line 970
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 978
    iget-object v0, p0, Landroid/widget/Spinner$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@9
    .line 976
    :cond_0
    return-void
.end method
