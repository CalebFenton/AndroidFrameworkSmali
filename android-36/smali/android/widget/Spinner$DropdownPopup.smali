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
.field private greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mHintText:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Landroid/widget/Spinner;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .registers 1

    iget-object p0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1218
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 1219
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1221
    invoke-virtual {p0, p1}, Landroid/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 1222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setModal(Z)V

    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    .line 1224
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1233
    return-void
.end method

.method static synthetic blacklist access$101(Landroid/widget/Spinner$DropdownPopup;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/Spinner$DropdownPopup;

    .line 1213
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method greylist-max-o computeContentWidth()V
    .registers 9

    .line 1251
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1252
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1253
    .local v1, "hOffset":I
    if-eqz v0, :cond_2c

    .line 1254
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1255
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_2a

    :cond_21
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    :goto_2a
    move v1, v2

    goto :goto_3d

    .line 1257
    :cond_2c
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v3}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 1260
    :goto_3d
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v2

    .line 1261
    .local v2, "spinnerPaddingLeft":I
    iget-object v3, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v3

    .line 1262
    .local v3, "spinnerPaddingRight":I
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getWidth()I

    move-result v4

    .line 1264
    .local v4, "spinnerWidth":I
    iget-object v5, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v5, v5, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_94

    .line 1265
    iget-object v5, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v6, Landroid/widget/SpinnerAdapter;

    .line 1266
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1265
    invoke-virtual {v5, v6, v7}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 1267
    .local v5, "contentWidth":I
    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/Spinner;->access$000(Landroid/widget/Spinner;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1268
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v7}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v7}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 1269
    .local v6, "contentWidthLimit":I
    if-le v5, v6, :cond_89

    .line 1270
    move v5, v6

    .line 1272
    :cond_89
    sub-int v7, v4, v2

    sub-int/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 1274
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthLimit":I
    goto :goto_a9

    :cond_94
    iget-object v5, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v5, v5, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a2

    .line 1275
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_a9

    .line 1277
    :cond_a2
    iget-object v5, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v5, v5, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v5}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 1280
    :goto_a9
    iget-object v5, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 1281
    sub-int v5, v4, v3

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    goto :goto_bb

    .line 1283
    :cond_ba
    add-int/2addr v1, v2

    .line 1285
    :goto_bb
    invoke-virtual {p0, v1}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 1286
    return-void
.end method

.method public greylist-max-o getHintText()Ljava/lang/CharSequence;
    .registers 2

    .line 1242
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 1237
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1238
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 1239
    return-void
.end method

.method public greylist-max-o setPromptText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1247
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 1248
    return-void
.end method

.method public greylist-max-o show(II)V
    .registers 8
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 1289
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->isShowing()Z

    move-result v0

    .line 1291
    .local v0, "wasShowing":Z
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 1293
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 1294
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1295
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1296
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1297
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1298
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1299
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/Spinner$DropdownPopup;->setSelection(I)V

    .line 1301
    if-eqz v0, :cond_28

    .line 1304
    return-void

    .line 1310
    :cond_28
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1311
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_40

    .line 1312
    new-instance v3, Landroid/widget/Spinner$DropdownPopup$2;

    invoke-direct {v3, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    .line 1326
    .local v3, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1327
    new-instance v4, Landroid/widget/Spinner$DropdownPopup$3;

    invoke-direct {v4, p0, v3}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1336
    .end local v3    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_40
    return-void
.end method
