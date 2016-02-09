.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method static synthetic -get0(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0

    #@0
    invoke-super {p0}, Landroid/widget/Spinner$DropdownPopup;->show()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/Spinner;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    #@0
    .prologue
    .line 1146
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@2
    .line 1148
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 1150
    invoke-virtual {p0, p1}, Landroid/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    #@8
    .line 1151
    const/4 v0, 0x1

    #@9
    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setModal(Z)V

    #@c
    .line 1152
    const/4 v0, 0x0

    #@d
    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    #@10
    .line 1153
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    #@12
    invoke-direct {v0, p0}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    #@15
    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@18
    .line 1147
    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1180
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 1181
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    #@6
    .line 1182
    .local v3, "hOffset":I
    if-eqz v0, :cond_2

    #@8
    .line 1183
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@a
    invoke-static {v7}, Landroid/widget/Spinner;->-get2(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@11
    .line 1184
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@13
    invoke-virtual {v7}, Landroid/widget/Spinner;->isLayoutRtl()Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_1

    #@19
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@1b
    invoke-static {v7}, Landroid/widget/Spinner;->-get2(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    #@1e
    move-result-object v7

    #@1f
    iget v3, v7, Landroid/graphics/Rect;->right:I

    #@21
    .line 1189
    :goto_0
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@23
    invoke-virtual {v7}, Landroid/widget/Spinner;->getPaddingLeft()I

    #@26
    move-result v4

    #@27
    .line 1190
    .local v4, "spinnerPaddingLeft":I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@29
    invoke-virtual {v7}, Landroid/widget/Spinner;->getPaddingRight()I

    #@2c
    move-result v5

    #@2d
    .line 1191
    .local v5, "spinnerPaddingRight":I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@2f
    invoke-virtual {v7}, Landroid/widget/Spinner;->getWidth()I

    #@32
    move-result v6

    #@33
    .line 1193
    .local v6, "spinnerWidth":I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@35
    iget v7, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    #@37
    const/4 v8, -0x2

    #@38
    if-ne v7, v8, :cond_3

    #@3a
    .line 1194
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@3c
    .line 1195
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    #@3e
    check-cast v7, Landroid/widget/SpinnerAdapter;

    #@40
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    #@43
    move-result-object v9

    #@44
    .line 1194
    invoke-virtual {v8, v7, v9}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    #@47
    move-result v1

    #@48
    .line 1196
    .local v1, "contentWidth":I
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@4a
    invoke-static {v7}, Landroid/widget/Spinner;->-get0(Landroid/widget/Spinner;)Landroid/content/Context;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@55
    move-result-object v7

    #@56
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    #@58
    .line 1197
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@5a
    invoke-static {v8}, Landroid/widget/Spinner;->-get2(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    #@5d
    move-result-object v8

    #@5e
    iget v8, v8, Landroid/graphics/Rect;->left:I

    #@60
    .line 1196
    sub-int/2addr v7, v8

    #@61
    .line 1197
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@63
    invoke-static {v8}, Landroid/widget/Spinner;->-get2(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    #@66
    move-result-object v8

    #@67
    iget v8, v8, Landroid/graphics/Rect;->right:I

    #@69
    .line 1196
    sub-int v2, v7, v8

    #@6b
    .line 1198
    .local v2, "contentWidthLimit":I
    if-le v1, v2, :cond_0

    #@6d
    .line 1199
    move v1, v2

    #@6e
    .line 1202
    :cond_0
    sub-int v7, v6, v4

    #@70
    sub-int/2addr v7, v5

    #@71
    .line 1201
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    #@74
    move-result v7

    #@75
    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    #@78
    .line 1209
    .end local v1    # "contentWidth":I
    .end local v2    # "contentWidthLimit":I
    :goto_1
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@7a
    invoke-virtual {v7}, Landroid/widget/Spinner;->isLayoutRtl()Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_5

    #@80
    .line 1210
    sub-int v7, v6, v5

    #@82
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getWidth()I

    #@85
    move-result v8

    #@86
    sub-int/2addr v7, v8

    #@87
    add-int/2addr v3, v7

    #@88
    .line 1214
    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    #@8b
    .line 1179
    return-void

    #@8c
    .line 1184
    .end local v4    # "spinnerPaddingLeft":I
    .end local v5    # "spinnerPaddingRight":I
    .end local v6    # "spinnerWidth":I
    :cond_1
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@8e
    invoke-static {v7}, Landroid/widget/Spinner;->-get2(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    #@91
    move-result-object v7

    #@92
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@94
    neg-int v3, v7

    #@95
    goto :goto_0

    #@96
    .line 1186
    :cond_2
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@98
    invoke-static {v7}, Landroid/widget/Spinner;->-get2(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    #@9b
    move-result-object v7

    #@9c
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@9e
    invoke-static {v8}, Landroid/widget/Spinner;->-get2(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    #@a1
    move-result-object v8

    #@a2
    iput v9, v8, Landroid/graphics/Rect;->right:I

    #@a4
    iput v9, v7, Landroid/graphics/Rect;->left:I

    #@a6
    goto/16 :goto_0

    #@a8
    .line 1203
    .restart local v4    # "spinnerPaddingLeft":I
    .restart local v5    # "spinnerPaddingRight":I
    .restart local v6    # "spinnerWidth":I
    :cond_3
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@aa
    iget v7, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    #@ac
    const/4 v8, -0x1

    #@ad
    if-ne v7, v8, :cond_4

    #@af
    .line 1204
    sub-int v7, v6, v4

    #@b1
    sub-int/2addr v7, v5

    #@b2
    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    #@b5
    goto :goto_1

    #@b6
    .line 1206
    :cond_4
    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@b8
    iget v7, v7, Landroid/widget/Spinner;->mDropDownWidth:I

    #@ba
    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    #@bd
    goto :goto_1

    #@be
    .line 1212
    :cond_5
    add-int/2addr v3, v4

    #@bf
    goto :goto_2
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1171
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    .line 1166
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3
    .line 1167
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    #@5
    .line 1165
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1176
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    #@2
    .line 1174
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    #@0
    .prologue
    .line 1218
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->isShowing()Z

    #@3
    move-result v3

    #@4
    .line 1220
    .local v3, "wasShowing":Z
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    #@7
    .line 1222
    const/4 v4, 0x2

    #@8
    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    #@b
    .line 1223
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    #@e
    .line 1224
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    #@11
    move-result-object v1

    #@12
    .line 1225
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x1

    #@13
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    #@16
    .line 1226
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    #@19
    .line 1227
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    #@1c
    .line 1228
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@1e
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    #@21
    move-result v4

    #@22
    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setSelection(I)V

    #@25
    .line 1230
    if-eqz v3, :cond_0

    #@27
    .line 1233
    return-void

    #@28
    .line 1239
    :cond_0
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@2a
    invoke-virtual {v4}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@2d
    move-result-object v2

    #@2e
    .line 1240
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_1

    #@30
    .line 1241
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$2;

    #@32
    invoke-direct {v0, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    #@35
    .line 1255
    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@38
    .line 1256
    new-instance v4, Landroid/widget/Spinner$DropdownPopup$3;

    #@3a
    invoke-direct {v4, p0, v0}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@3d
    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@40
    .line 1217
    .end local v0    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_1
    return-void
.end method
