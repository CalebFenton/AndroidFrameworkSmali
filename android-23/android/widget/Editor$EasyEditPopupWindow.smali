.class Landroid/widget/Editor$EasyEditPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyEditPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900e8


# instance fields
.field private mDeleteTextView:Landroid/widget/TextView;

.field private mEasyEditSpan:Landroid/text/style/EasyEditSpan;

.field private mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$EasyEditPopupWindow;Landroid/widget/Editor$EasyEditDeleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Editor$EasyEditDeleteListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$EasyEditPopupWindow;->setOnDeleteListener(Landroid/widget/Editor$EasyEditDeleteListener;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 2357
    iput-object p1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$EasyEditPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$EasyEditPopupWindow;-><init>(Landroid/widget/Editor;)V

    #@3
    return-void
.end method

.method private setOnDeleteListener(Landroid/widget/Editor$EasyEditDeleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Editor$EasyEditDeleteListener;

    #@0
    .prologue
    .line 2399
    iput-object p1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    #@2
    .line 2398
    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 0
    .param p1, "positionY"    # I

    #@0
    .prologue
    .line 2435
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    #@0
    .prologue
    .line 2367
    new-instance v0, Landroid/widget/PopupWindow;

    #@2
    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    const/4 v2, 0x0

    #@d
    .line 2368
    const v3, 0x10102c8

    #@10
    .line 2367
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@13
    iput-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@15
    .line 2369
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@17
    const/4 v1, 0x2

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@1b
    .line 2370
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@1d
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    #@21
    .line 2366
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    #@0
    .prologue
    .line 2423
    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/text/Editable;

    #@c
    .line 2424
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    #@e
    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@11
    move-result v1

    #@12
    return v1
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 2429
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public hide()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2413
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2414
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/text/style/EasyEditSpan;->setDeleteEnabled(Z)V

    #@b
    .line 2416
    :cond_0
    iput-object v2, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    #@d
    .line 2417
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    #@10
    .line 2412
    return-void
.end method

.method protected initContentView()V
    .locals 6

    #@0
    .prologue
    const/4 v5, -0x2

    #@1
    .line 2375
    new-instance v1, Landroid/widget/LinearLayout;

    #@3
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    #@5
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v3

    #@d
    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@10
    .line 2376
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    #@11
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@14
    .line 2377
    iput-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@16
    .line 2378
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@18
    .line 2379
    const v4, 0x10806e9

    #@1b
    .line 2378
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    #@1e
    .line 2381
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    #@20
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@27
    move-result-object v3

    #@28
    .line 2382
    const-string/jumbo v4, "layout_inflater"

    #@2b
    .line 2381
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/view/LayoutInflater;

    #@31
    .line 2384
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@33
    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@36
    .line 2387
    .local v2, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    const v3, 0x10900e8

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, Landroid/widget/TextView;

    #@40
    iput-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    #@42
    .line 2388
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    #@44
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@47
    .line 2389
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    #@49
    const v4, 0x1040339

    #@4c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    #@4f
    .line 2390
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    #@51
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@54
    .line 2391
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@56
    iget-object v4, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    #@58
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@5b
    .line 2374
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 2404
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 2405
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    #@a
    invoke-virtual {v0}, Landroid/text/style/EasyEditSpan;->isDeleteEnabled()Z

    #@d
    move-result v0

    #@e
    .line 2404
    if-eqz v0, :cond_0

    #@10
    .line 2406
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 2407
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    #@16
    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    #@18
    invoke-interface {v0, v1}, Landroid/widget/Editor$EasyEditDeleteListener;->onDeleteClick(Landroid/text/style/EasyEditSpan;)V

    #@1b
    .line 2403
    :cond_0
    return-void
.end method

.method public setEasyEditSpan(Landroid/text/style/EasyEditSpan;)V
    .locals 0
    .param p1, "easyEditSpan"    # Landroid/text/style/EasyEditSpan;

    #@0
    .prologue
    .line 2395
    iput-object p1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    #@2
    .line 2394
    return-void
.end method
