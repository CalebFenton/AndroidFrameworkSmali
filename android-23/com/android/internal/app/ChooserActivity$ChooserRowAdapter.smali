.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@0
    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 895
    const/4 v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    #@8
    .line 898
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@a
    .line 899
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@10
    .line 901
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    #@12
    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V

    #@15
    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@18
    .line 897
    return-void
.end method


# virtual methods
.method bindViewHolder(I[Landroid/view/View;)V
    .locals 10
    .param p1, "rowPosition"    # I
    .param p2, "holder"    # [Landroid/view/View;

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    .line 965
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    #@4
    move-result v4

    #@5
    .line 966
    .local v4, "start":I
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@7
    invoke-virtual {v7, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    #@a
    move-result v5

    #@b
    .line 968
    .local v5, "startType":I
    add-int/lit8 v7, v4, 0x4

    #@d
    add-int/lit8 v0, v7, -0x1

    #@f
    .line 969
    .local v0, "end":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@11
    invoke-virtual {v7, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    #@14
    move-result v7

    #@15
    if-eq v7, v5, :cond_0

    #@17
    if-lt v0, v4, :cond_0

    #@19
    .line 970
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 973
    :cond_0
    aget-object v3, p2, v9

    #@1e
    check-cast v3, Landroid/view/ViewGroup;

    #@20
    .line 975
    .local v3, "row":Landroid/view/ViewGroup;
    const/4 v7, 0x1

    #@21
    if-ne v5, v7, :cond_1

    #@23
    .line 976
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@25
    const v8, 0x1060071

    #@28
    invoke-virtual {v7, v8}, Lcom/android/internal/app/ChooserActivity;->getColor(I)I

    #@2b
    move-result v7

    #@2c
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    #@2f
    .line 981
    :goto_1
    const/4 v1, 0x0

    #@30
    .local v1, "i":I
    :goto_2
    if-ge v1, v9, :cond_3

    #@32
    .line 982
    aget-object v6, p2, v1

    #@34
    .line 983
    .local v6, "v":Landroid/view/View;
    add-int v7, v4, v1

    #@36
    if-gt v7, v0, :cond_2

    #@38
    .line 984
    const/4 v7, 0x0

    #@39
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    #@3c
    .line 985
    add-int v2, v4, v1

    #@3e
    .line 986
    .local v2, "itemIndex":I
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@40
    invoke-virtual {v7, v2, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    #@43
    .line 987
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    #@45
    invoke-direct {v7, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)V

    #@48
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@4b
    .line 993
    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    #@4d
    invoke-direct {v7, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)V

    #@50
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@53
    .line 981
    .end local v2    # "itemIndex":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_2

    #@56
    .line 978
    .end local v1    # "i":I
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    const/4 v7, 0x0

    #@57
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@5a
    goto :goto_1

    #@5b
    .line 1002
    .restart local v1    # "i":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_2
    const/16 v7, 0x8

    #@5d
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    #@60
    goto :goto_3

    #@61
    .line 964
    .end local v6    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method createViewHolder(Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    .line 951
    const/4 v3, 0x5

    #@2
    new-array v0, v3, [Landroid/view/View;

    #@4
    .line 953
    .local v0, "holder":[Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@6
    const v4, 0x1090043

    #@9
    .line 954
    const/4 v5, 0x0

    #@a
    .line 953
    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/view/ViewGroup;

    #@10
    .line 955
    .local v2, "row":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    #@13
    .line 956
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@15
    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    #@18
    move-result-object v3

    #@19
    aput-object v3, v0, v1

    #@1b
    .line 957
    aget-object v3, v0, v1

    #@1d
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@20
    .line 955
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 959
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    #@26
    .line 960
    aput-object v2, v0, v6

    #@28
    .line 961
    return-object v0
.end method

.method public getCount()I
    .locals 5

    #@0
    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    #@2
    .line 919
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@7
    move-result v0

    #@8
    int-to-float v0, v0

    #@9
    div-float/2addr v0, v4

    #@a
    float-to-double v0, v0

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    .line 920
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@14
    move-result v2

    #@15
    int-to-float v2, v2

    #@16
    div-float/2addr v2, v4

    #@17
    float-to-double v2, v2

    #@18
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@1b
    move-result-wide v2

    #@1c
    .line 919
    add-double/2addr v0, v2

    #@1d
    .line 921
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@1f
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    #@22
    move-result v2

    #@23
    int-to-float v2, v2

    #@24
    div-float/2addr v2, v4

    #@25
    float-to-double v2, v2

    #@26
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@29
    move-result-wide v2

    #@2a
    .line 918
    add-double/2addr v0, v2

    #@2b
    double-to-int v0, v0

    #@2c
    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 7
    .param p1, "row"    # I

    #@0
    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    #@2
    .line 1008
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@4
    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    #@7
    move-result v0

    #@8
    .line 1009
    .local v0, "callerCount":I
    int-to-float v4, v0

    #@9
    div-float/2addr v4, v6

    #@a
    float-to-double v4, v4

    #@b
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v4

    #@f
    double-to-int v1, v4

    #@10
    .line 1011
    .local v1, "callerRows":I
    if-ge p1, v1, :cond_0

    #@12
    .line 1012
    mul-int/lit8 v4, p1, 0x4

    #@14
    return v4

    #@15
    .line 1015
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@17
    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    #@1a
    move-result v2

    #@1b
    .line 1016
    .local v2, "serviceCount":I
    int-to-float v4, v2

    #@1c
    div-float/2addr v4, v6

    #@1d
    float-to-double v4, v4

    #@1e
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@21
    move-result-wide v4

    #@22
    double-to-int v3, v4

    #@23
    .line 1018
    .local v3, "serviceRows":I
    add-int v4, v1, v3

    #@25
    if-ge p1, v4, :cond_1

    #@27
    .line 1019
    sub-int v4, p1, v1

    #@29
    mul-int/lit8 v4, v4, 0x4

    #@2b
    add-int/2addr v4, v0

    #@2c
    return v4

    #@2d
    .line 1022
    :cond_1
    add-int v4, v0, v2

    #@2f
    .line 1023
    sub-int v5, p1, v1

    #@31
    sub-int/2addr v5, v3

    #@32
    mul-int/lit8 v5, v5, 0x4

    #@34
    .line 1022
    add-int/2addr v4, v5

    #@35
    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 928
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 933
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 939
    if-nez p2, :cond_0

    #@2
    .line 940
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)[Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    .line 944
    .local v0, "holder":[Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(I[Landroid/view/View;)V

    #@9
    .line 947
    const/4 v1, 0x4

    #@a
    aget-object v1, v0, v1

    #@c
    return-object v1

    #@d
    .line 942
    .end local v0    # "holder":[Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [Landroid/view/View;

    #@13
    .restart local v0    # "holder":[Landroid/view/View;
    goto :goto_0
.end method
