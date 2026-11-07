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
.field public greylist mAdapter:Landroid/widget/ListAdapter;

.field public greylist mCancelable:Z

.field public greylist mCheckedItem:I

.field public greylist mCheckedItems:[Z

.field public final greylist mContext:Landroid/content/Context;

.field public greylist mCursor:Landroid/database/Cursor;

.field public greylist mCustomTitleView:Landroid/view/View;

.field public greylist-max-o mForceInverseBackground:Z

.field public greylist mIcon:Landroid/graphics/drawable/Drawable;

.field public greylist-max-o mIconAttrId:I

.field public greylist mIconId:I

.field public final greylist mInflater:Landroid/view/LayoutInflater;

.field public greylist mIsCheckedColumn:Ljava/lang/String;

.field public greylist mIsMultiChoice:Z

.field public greylist mIsSingleChoice:Z

.field public greylist mItems:[Ljava/lang/CharSequence;

.field public greylist mLabelColumn:Ljava/lang/String;

.field public greylist mMessage:Ljava/lang/CharSequence;

.field public greylist mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mNegativeButtonText:Ljava/lang/CharSequence;

.field public greylist mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mNeutralButtonText:Ljava/lang/CharSequence;

.field public greylist mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public greylist mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public greylist mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public greylist mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public greylist mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public greylist-max-o mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public greylist mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public greylist mPositiveButtonText:Ljava/lang/CharSequence;

.field public greylist-max-o mRecycleOnMeasure:Z

.field public greylist mTitle:Ljava/lang/CharSequence;

.field public greylist mView:Landroid/view/View;

.field public greylist-max-o mViewLayoutResId:I

.field public greylist-max-o mViewSpacingBottom:I

.field public greylist-max-o mViewSpacingLeft:I

.field public greylist-max-o mViewSpacingRight:I

.field public greylist-max-o mViewSpacingSpecified:Z

.field public greylist-max-o mViewSpacingTop:I


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 1062
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 1102
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 1123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1140
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1141
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 1142
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1143
    return-void
.end method

.method private greylist-max-o createListView(Lcom/android/internal/app/AlertController;)V
    .registers 16
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .line 1207
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmListLayout(Lcom/android/internal/app/AlertController;)I

    move-result v1

    .line 1208
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/app/AlertController$RecycleListView;

    .line 1211
    .local v6, "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_39

    .line 1212
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2b

    .line 1213
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$1;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmMultiChoiceItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result v4

    const v5, 0x1020014

    move-object v7, v6

    .end local v6    # "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    .local v7, "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    iget-object v6, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$1;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V

    move-object v6, v7

    move-object v7, p1

    .local v1, "adapter":Landroid/widget/ListAdapter;
    goto :goto_77

    .line 1228
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    .restart local v6    # "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    :cond_2b
    move-object v2, p0

    move-object v7, v6

    .end local v6    # "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    .restart local v7    # "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$2;

    iget-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v7, p1

    .end local p1    # "dialog":Lcom/android/internal/app/AlertController;
    .restart local v6    # "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    .local v7, "dialog":Lcom/android/internal/app/AlertController;
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$2;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_77

    .line 1257
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "dialog":Lcom/android/internal/app/AlertController;
    .restart local p1    # "dialog":Lcom/android/internal/app/AlertController;
    :cond_39
    move-object v2, p0

    move-object v7, p1

    .end local p1    # "dialog":Lcom/android/internal/app/AlertController;
    .restart local v7    # "dialog":Lcom/android/internal/app/AlertController;
    iget-boolean p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz p1, :cond_45

    .line 1258
    invoke-static {v7}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmSingleChoiceItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result p1

    move v10, p1

    .local p1, "layout":I
    goto :goto_4a

    .line 1260
    .end local p1    # "layout":I
    :cond_45
    invoke-static {v7}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmListItemLayout(Lcom/android/internal/app/AlertController;)I

    move-result p1

    move v10, p1

    .line 1263
    .local v10, "layout":I
    :goto_4a
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v0, 0x1020014

    if-eqz p1, :cond_66

    .line 1264
    new-instance v8, Landroid/widget/SimpleCursorAdapter;

    iget-object v9, v2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v11, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array {v0}, [I

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v8

    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_77

    .line 1266
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_66
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_6d

    .line 1267
    iget-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_77

    .line 1269
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_6d
    new-instance p1, Lcom/android/internal/app/AlertController$CheckedItemAdapter;

    iget-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {p1, v1, v10, v0, v3}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v1, p1

    .line 1273
    .end local v10    # "layout":I
    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    :goto_77
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz p1, :cond_80

    .line 1274
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {p1, v6}, Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1280
    :cond_80
    invoke-static {v7, v1}, Lcom/android/internal/app/AlertController;->-$$Nest$fputmAdapter(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)V

    .line 1281
    iget p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {v7, p1}, Lcom/android/internal/app/AlertController;->-$$Nest$fputmCheckedItem(Lcom/android/internal/app/AlertController;I)V

    .line 1283
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_95

    .line 1284
    new-instance p1, Lcom/android/internal/app/AlertController$AlertParams$3;

    invoke-direct {p1, p0, v7}, Lcom/android/internal/app/AlertController$AlertParams$3;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v6, p1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_a1

    .line 1293
    :cond_95
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz p1, :cond_a1

    .line 1294
    new-instance p1, Lcom/android/internal/app/AlertController$AlertParams$4;

    invoke-direct {p1, p0, v6, v7}, Lcom/android/internal/app/AlertController$AlertParams$4;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v6, p1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1307
    :cond_a1
    :goto_a1
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz p1, :cond_aa

    .line 1308
    iget-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, p1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1311
    :cond_aa
    iget-boolean p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz p1, :cond_b3

    .line 1312
    const/4 p1, 0x1

    invoke-virtual {v6, p1}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_bb

    .line 1313
    :cond_b3
    iget-boolean p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz p1, :cond_bb

    .line 1314
    const/4 p1, 0x2

    invoke-virtual {v6, p1}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1316
    :cond_bb
    :goto_bb
    iget-boolean p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean p1, v6, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1317
    iput-object v6, v7, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1318
    return-void
.end method


# virtual methods
.method public greylist apply(Lcom/android/internal/app/AlertController;)V
    .registers 9
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .line 1147
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1148
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_32

    .line 1150
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    .line 1151
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1153
    :cond_13
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1154
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1156
    :cond_1c
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_25

    .line 1157
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1159
    :cond_25
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_32

    .line 1160
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1163
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3b

    .line 1164
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1166
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 1167
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1170
    :cond_48
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_54

    .line 1171
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1174
    :cond_54
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_60

    .line 1175
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x3

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1178
    :cond_60
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_68

    .line 1179
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 1183
    :cond_68
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_77

    .line 1184
    :cond_74
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    .line 1186
    :cond_77
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_95

    .line 1187
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_8e

    .line 1188
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    .end local p1    # "dialog":Lcom/android/internal/app/AlertController;
    .local v1, "dialog":Lcom/android/internal/app/AlertController;
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_9f

    .line 1191
    .end local v1    # "dialog":Lcom/android/internal/app/AlertController;
    .restart local p1    # "dialog":Lcom/android/internal/app/AlertController;
    :cond_8e
    move-object v1, p1

    .end local p1    # "dialog":Lcom/android/internal/app/AlertController;
    .restart local v1    # "dialog":Lcom/android/internal/app/AlertController;
    iget-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_9f

    .line 1193
    .end local v1    # "dialog":Lcom/android/internal/app/AlertController;
    .restart local p1    # "dialog":Lcom/android/internal/app/AlertController;
    :cond_95
    move-object v1, p1

    .end local p1    # "dialog":Lcom/android/internal/app/AlertController;
    .restart local v1    # "dialog":Lcom/android/internal/app/AlertController;
    iget p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz p1, :cond_9f

    .line 1194
    iget p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {v1, p1}, Lcom/android/internal/app/AlertController;->setView(I)V

    .line 1204
    :cond_9f
    :goto_9f
    return-void
.end method
