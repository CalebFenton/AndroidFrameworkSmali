.class Landroid/widget/Editor$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private mAbove:Z

.field private mPopupInlineErrorAboveBackgroundId:I

.field private mPopupInlineErrorBackgroundId:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;II)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5030
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    #@4
    .line 5024
    iput-boolean v0, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    #@6
    .line 5026
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    #@8
    .line 5027
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    #@a
    .line 5031
    iput-object p1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    #@c
    .line 5035
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    #@e
    .line 5036
    const/16 v1, 0x113

    #@10
    .line 5035
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    #@16
    .line 5037
    iget-object v0, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    #@18
    iget v1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    #@1a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    #@1d
    .line 5029
    return-void
.end method

.method private getResourceId(II)I
    .locals 4
    .param p1, "currentId"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5057
    if-nez p1, :cond_0

    #@3
    .line 5058
    iget-object v1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    #@5
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    .line 5059
    sget-object v2, Landroid/R$styleable;->Theme:[I

    #@b
    .line 5058
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@e
    move-result-object v0

    #@f
    .line 5060
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@12
    move-result p1

    #@13
    .line 5061
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 5063
    .end local v0    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_0
    return p1
.end method


# virtual methods
.method fixDirection(Z)V
    .locals 2
    .param p1, "above"    # Z

    #@0
    .prologue
    .line 5041
    iput-boolean p1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    #@2
    .line 5043
    if-eqz p1, :cond_0

    #@4
    .line 5045
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    #@6
    .line 5046
    const/16 v1, 0x114

    #@8
    .line 5045
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    #@b
    move-result v0

    #@c
    .line 5044
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    #@e
    .line 5052
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    #@10
    if-eqz p1, :cond_1

    #@12
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    #@14
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    #@17
    .line 5040
    return-void

    #@18
    .line 5048
    :cond_0
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    #@1a
    .line 5049
    const/16 v1, 0x113

    #@1c
    .line 5048
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    #@22
    goto :goto_0

    #@23
    .line 5053
    :cond_1
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    #@25
    goto :goto_1
.end method

.method public update(IIIIZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "force"    # Z

    #@0
    .prologue
    .line 5068
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    #@3
    .line 5070
    invoke-virtual {p0}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    #@6
    move-result v0

    #@7
    .line 5071
    .local v0, "above":Z
    iget-boolean v1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 5072
    invoke-virtual {p0, v0}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    #@e
    .line 5067
    :cond_0
    return-void
.end method
