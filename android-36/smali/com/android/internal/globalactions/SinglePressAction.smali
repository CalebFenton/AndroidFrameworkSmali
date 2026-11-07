.class public abstract Lcom/android/internal/globalactions/SinglePressAction;
.super Ljava/lang/Object;
.source "SinglePressAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;


# instance fields
.field private final blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mIconResId:I

.field private final blacklist mMessage:Ljava/lang/CharSequence;

.field private final blacklist mMessageResId:I


# direct methods
.method protected constructor blacklist <init>(II)V
    .registers 4
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    .line 37
    iput p2, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 39
    iput-object v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    return-void
.end method

.method protected constructor blacklist <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    .line 45
    iput-object p3, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 46
    iput-object p2, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .line 73
    const v0, 0x1090088

    const/4 v1, 0x0

    invoke-virtual {p4, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 76
    .local v1, "icon":Landroid/widget/ImageView;
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, "messageView":Landroid/widget/TextView;
    const v3, 0x1020552

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 79
    .local v3, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/globalactions/SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "status":Ljava/lang/String;
    if-eqz v3, :cond_38

    .line 81
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 82
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 84
    :cond_33
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :cond_38
    :goto_38
    if-eqz v1, :cond_56

    .line 88
    iget-object v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_49

    .line 89
    iget-object v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_56

    .line 91
    :cond_49
    iget v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    if-eqz v5, :cond_56

    .line 92
    iget v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_56
    :goto_56
    if-eqz v2, :cond_67

    .line 96
    iget-object v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_62

    .line 97
    iget-object v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 99
    :cond_62
    iget v5, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :cond_67
    :goto_67
    return-object v0
.end method

.method public blacklist getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 64
    iget-object v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-object v0

    .line 66
    :cond_7
    iget v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStatus()Ljava/lang/String;
    .registers 2

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public abstract blacklist onPress()V
.end method
