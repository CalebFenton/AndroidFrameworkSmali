.class public Lcom/android/internal/widget/AccountItemView;
.super Landroid/widget/LinearLayout;
.source "AccountItemView.java"


# instance fields
.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Landroid/widget/TextView;

.field private mAccountNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 46
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AccountItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 55
    const-string/jumbo v2, "layout_inflater"

    #@6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 54
    check-cast v0, Landroid/view/LayoutInflater;

    #@c
    .line 56
    .local v0, "inflator":Landroid/view/LayoutInflater;
    const v2, 0x10900db

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@13
    move-result-object v1

    #@14
    .line 57
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->addView(Landroid/view/View;)V

    #@17
    .line 58
    invoke-direct {p0, v1}, Lcom/android/internal/widget/AccountItemView;->initViewItem(Landroid/view/View;)V

    #@1a
    .line 52
    return-void
.end method

.method private initViewItem(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 62
    const v0, 0x1020006

    #@3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/widget/ImageView;

    #@9
    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    #@b
    .line 63
    const v0, 0x1020016

    #@e
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/widget/TextView;

    #@14
    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    #@16
    .line 64
    const v0, 0x1020010

    #@19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/widget/TextView;

    #@1f
    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    #@21
    .line 61
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 96
    const/16 v0, 0x8

    #@8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@b
    .line 94
    :goto_0
    return-void

    #@c
    .line 98
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@f
    .line 99
    const/4 v0, 0x0

    #@10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@13
    goto :goto_0
.end method


# virtual methods
.method public setAccountIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@5
    .line 78
    return-void
.end method

.method public setAccountIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 82
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    #@5
    .line 86
    return-void
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    #@5
    .line 90
    return-void
.end method

.method public setViewItem(Lcom/android/internal/widget/AccountViewAdapter$AccountElements;)V
    .locals 2
    .param p1, "element"    # Lcom/android/internal/widget/AccountViewAdapter$AccountElements;

    #@0
    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 69
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@6
    .line 70
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 74
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    #@10
    .line 75
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getNumber()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    #@17
    .line 67
    return-void

    #@18
    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getIcon()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(I)V

    #@1f
    goto :goto_0
.end method
