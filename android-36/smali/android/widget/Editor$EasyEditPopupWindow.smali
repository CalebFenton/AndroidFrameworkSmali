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
.field private static final greylist-max-o POPUP_TEXT_LAYOUT:I = 0x1090161


# instance fields
.field private greylist-max-o mDeleteTextView:Landroid/widget/TextView;

.field private greylist-max-o mEasyEditSpan:Landroid/text/style/EasyEditSpan;

.field private greylist-max-o mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEasyEditSpan(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetOnDeleteListener(Landroid/widget/Editor$EasyEditPopupWindow;Landroid/widget/Editor$EasyEditDeleteListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor$EasyEditPopupWindow;->setOnDeleteListener(Landroid/widget/Editor$EasyEditDeleteListener;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3660
    iput-object p1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$EasyEditPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private greylist-max-o setOnDeleteListener(Landroid/widget/Editor$EasyEditDeleteListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/Editor$EasyEditDeleteListener;

    .line 3702
    iput-object p1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    .line 3703
    return-void
.end method


# virtual methods
.method protected greylist-max-o clipVertically(I)I
    .registers 2
    .param p1, "positionY"    # I

    .line 3739
    return p1
.end method

.method protected greylist-max-o createPopupWindow()V
    .registers 5

    .line 3670
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3672
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3673
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3674
    return-void
.end method

.method protected greylist-max-o getTextOffset()I
    .registers 3

    .line 3726
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 3727
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected greylist-max-o getVerticalLocalPosition(I)I
    .registers 4
    .param p1, "line"    # I

    .line 3732
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 3733
    .local v0, "layout":Landroid/text/Layout;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v1

    return v1
.end method

.method public greylist-max-o hide()V
    .registers 3

    .line 3716
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v0, :cond_a

    .line 3717
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/style/EasyEditSpan;->setDeleteEnabled(Z)V

    .line 3719
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    .line 3720
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 3721
    return-void
.end method

.method protected greylist-max-o initContentView()V
    .registers 6

    .line 3678
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3679
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3680
    iput-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3681
    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x1080a58

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3684
    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3685
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3687
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3690
    .local v2, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    const v3, 0x1090161

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    .line 3691
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3692
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    const v4, 0x104034f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3693
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3694
    iget-object v3, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3695
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 3707
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mDeleteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 3708
    invoke-virtual {v0}, Landroid/text/style/EasyEditSpan;->isDeleteEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    if-eqz v0, :cond_1b

    .line 3710
    iget-object v0, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mOnDeleteListener:Landroid/widget/Editor$EasyEditDeleteListener;

    iget-object v1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v0, v1}, Landroid/widget/Editor$EasyEditDeleteListener;->onDeleteClick(Landroid/text/style/EasyEditSpan;)V

    .line 3712
    :cond_1b
    return-void
.end method

.method public greylist-max-o setEasyEditSpan(Landroid/text/style/EasyEditSpan;)V
    .registers 2
    .param p1, "easyEditSpan"    # Landroid/text/style/EasyEditSpan;

    .line 3698
    iput-object p1, p0, Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 3699
    return-void
.end method
