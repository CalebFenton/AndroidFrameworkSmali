.class public Lcom/android/internal/widget/AccountItemView;
.super Landroid/widget/LinearLayout;
.source "AccountItemView.java"


# instance fields
.field private blacklist mAccountIcon:Landroid/widget/ImageView;

.field private blacklist mAccountName:Landroid/widget/TextView;

.field private blacklist mAccountNumber:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AccountItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    nop

    .line 55
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, "inflator":Landroid/view/LayoutInflater;
    const v1, 0x109014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->addView(Landroid/view/View;)V

    .line 58
    invoke-direct {p0, v1}, Lcom/android/internal/widget/AccountItemView;->initViewItem(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method private blacklist initViewItem(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 62
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    .line 63
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    .line 64
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method private blacklist setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 96
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    .line 98
    :cond_c
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_13
    return-void
.end method


# virtual methods
.method public blacklist setAccountIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    return-void
.end method

.method public blacklist setAccountIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public blacklist setAccountName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public blacklist setAccountNumber(Ljava/lang/String;)V
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public blacklist setViewItem(Lcom/android/internal/widget/AccountViewAdapter$AccountElements;)V
    .registers 4
    .param p1, "element"    # Lcom/android/internal/widget/AccountViewAdapter$AccountElements;

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_a

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 72
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getIcon()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(I)V

    .line 74
    :goto_11
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    .line 76
    return-void
.end method
