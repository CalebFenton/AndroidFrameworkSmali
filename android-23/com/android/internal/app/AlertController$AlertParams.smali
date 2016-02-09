.class public Lcom/android/internal/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 910
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    #@7
    .line 912
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    #@9
    .line 935
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    #@b
    .line 939
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    #@e
    .line 947
    iput-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    #@10
    .line 963
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@12
    .line 964
    iput-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    #@14
    .line 965
    const-string/jumbo v0, "layout_inflater"

    #@17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/view/LayoutInflater;

    #@1d
    iput-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    #@1f
    .line 962
    return-void
.end method

.method private createListView(Lcom/android/internal/app/AlertController;)V
    .locals 10
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    #@0
    .prologue
    const v4, 0x1020014

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v7, 0x0

    #@6
    .line 1030
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    #@8
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-get10(Lcom/android/internal/app/AlertController;)I

    #@b
    move-result v3

    #@c
    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v6

    #@10
    check-cast v6, Lcom/android/internal/app/AlertController$RecycleListView;

    #@12
    .line 1033
    .local v6, "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    #@14
    if-eqz v1, :cond_5

    #@16
    .line 1034
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    #@18
    if-nez v1, :cond_4

    #@1a
    .line 1035
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams$1;

    #@1c
    .line 1036
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@1e
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-get11(Lcom/android/internal/app/AlertController;)I

    #@21
    move-result v3

    #@22
    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    #@24
    move-object v1, p0

    #@25
    .line 1035
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AlertController$AlertParams$1;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V

    #@28
    .line 1094
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 1095
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    #@2e
    invoke-interface {v1, v6}, Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    #@31
    .line 1101
    :cond_0
    invoke-static {p1, v0}, Lcom/android/internal/app/AlertController;->-set0(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    #@34
    .line 1102
    iget v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    #@36
    invoke-static {p1, v1}, Lcom/android/internal/app/AlertController;->-set1(Lcom/android/internal/app/AlertController;I)I

    #@39
    .line 1104
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@3b
    if-eqz v1, :cond_9

    #@3d
    .line 1105
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$3;

    #@3f
    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AlertController$AlertParams$3;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V

    #@42
    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@45
    .line 1128
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@47
    if-eqz v1, :cond_2

    #@49
    .line 1129
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    #@4b
    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@4e
    .line 1132
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    #@50
    if-eqz v1, :cond_a

    #@52
    .line 1133
    invoke-virtual {v6, v9}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    #@55
    .line 1137
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    #@57
    iput-boolean v1, v6, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    #@59
    .line 1138
    invoke-static {p1, v6}, Lcom/android/internal/app/AlertController;->-set2(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    #@5c
    .line 1028
    return-void

    #@5d
    .line 1050
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams$2;

    #@5f
    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@61
    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    #@63
    move-object v1, v0

    #@64
    move-object v2, p0

    #@65
    move-object v7, p1

    #@66
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$2;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    #@69
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    #@6a
    .line 1078
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    #@6c
    if-eqz v1, :cond_6

    #@6e
    .line 1079
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-get12(Lcom/android/internal/app/AlertController;)I

    #@71
    move-result v2

    #@72
    .line 1084
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    #@74
    if-eqz v1, :cond_7

    #@76
    .line 1085
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    #@78
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@7a
    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    #@7c
    .line 1086
    new-array v7, v9, [Ljava/lang/String;

    #@7e
    iget-object v8, p0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    #@80
    aput-object v8, v7, v5

    #@82
    new-array v8, v9, [I

    #@84
    aput v4, v8, v5

    #@86
    move-object v4, v7

    #@87
    move-object v5, v8

    #@88
    .line 1085
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    #@8b
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    #@8c
    .line 1081
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_6
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-get9(Lcom/android/internal/app/AlertController;)I

    #@8f
    move-result v2

    #@90
    .restart local v2    # "layout":I
    goto :goto_3

    #@91
    .line 1087
    :cond_7
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    #@93
    if-eqz v1, :cond_8

    #@95
    .line 1088
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    #@97
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    #@98
    .line 1090
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_8
    new-instance v0, Lcom/android/internal/app/AlertController$CheckedItemAdapter;

    #@9a
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    #@9c
    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    #@9e
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    #@a1
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    #@a2
    .line 1114
    .end local v2    # "layout":I
    :cond_9
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    #@a4
    if-eqz v1, :cond_1

    #@a6
    .line 1115
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$4;

    #@a8
    invoke-direct {v1, p0, v6, p1}, Lcom/android/internal/app/AlertController$AlertParams$4;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    #@ab
    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@ae
    goto :goto_1

    #@af
    .line 1134
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    #@b1
    if-eqz v1, :cond_3

    #@b3
    .line 1135
    const/4 v1, 0x2

    #@b4
    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    #@b7
    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 969
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    #@3
    if-eqz v0, :cond_9

    #@5
    .line 970
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    #@7
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    #@a
    .line 985
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 986
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    #@10
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    #@13
    .line 988
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 989
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    #@19
    .line 990
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@1b
    .line 989
    const/4 v2, -0x1

    #@1c
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    #@1f
    .line 992
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 993
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    #@25
    .line 994
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@27
    .line 993
    const/4 v2, -0x2

    #@28
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    #@2b
    .line 996
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    #@2d
    if-eqz v0, :cond_4

    #@2f
    .line 997
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    #@31
    .line 998
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@33
    .line 997
    const/4 v2, -0x3

    #@34
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    #@37
    .line 1000
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    #@39
    if-eqz v0, :cond_5

    #@3b
    .line 1001
    const/4 v0, 0x1

    #@3c
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    #@3f
    .line 1005
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    #@41
    if-nez v0, :cond_6

    #@43
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    #@45
    if-eqz v0, :cond_d

    #@47
    .line 1006
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    #@4a
    .line 1008
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    #@4c
    if-eqz v0, :cond_f

    #@4e
    .line 1009
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    #@50
    if-eqz v0, :cond_e

    #@52
    .line 1010
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    #@54
    iget v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    #@56
    iget v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    #@58
    iget v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    #@5a
    .line 1011
    iget v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    #@5c
    move-object v0, p1

    #@5d
    .line 1010
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    #@60
    .line 968
    :cond_8
    :goto_2
    return-void

    #@61
    .line 972
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    #@63
    if-eqz v0, :cond_a

    #@65
    .line 973
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    #@67
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    #@6a
    .line 975
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    #@6c
    if-eqz v0, :cond_b

    #@6e
    .line 976
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    #@70
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@73
    .line 978
    :cond_b
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    #@75
    if-eqz v0, :cond_c

    #@77
    .line 979
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    #@79
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    #@7c
    .line 981
    :cond_c
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    #@7e
    if-eqz v0, :cond_0

    #@80
    .line 982
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    #@82
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    #@85
    move-result v0

    #@86
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    #@89
    goto :goto_0

    #@8a
    .line 1005
    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    #@8c
    if-eqz v0, :cond_7

    #@8e
    goto :goto_1

    #@8f
    .line 1013
    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    #@91
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    #@94
    goto :goto_2

    #@95
    .line 1015
    :cond_f
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    #@97
    if-eqz v0, :cond_8

    #@99
    .line 1016
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    #@9b
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(I)V

    #@9e
    goto :goto_2
.end method
