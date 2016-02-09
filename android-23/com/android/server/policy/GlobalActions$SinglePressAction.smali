.class abstract Lcom/android/server/policy/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 731
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    #@6
    .line 732
    iput p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    #@8
    .line 733
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    #@a
    .line 734
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    #@c
    .line 730
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 738
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    #@5
    .line 739
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    #@8
    .line 740
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    #@a
    .line 741
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    #@c
    .line 737
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 745
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    #@5
    .line 746
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    #@8
    .line 747
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    #@a
    .line 748
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    #@d
    .line 744
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 771
    const v5, 0x1090062

    #@4
    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@7
    move-result-object v4

    #@8
    .line 773
    .local v4, "v":Landroid/view/View;
    const v5, 0x1020006

    #@b
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/widget/ImageView;

    #@11
    .line 774
    .local v0, "icon":Landroid/widget/ImageView;
    const v5, 0x102000b

    #@14
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/widget/TextView;

    #@1a
    .line 776
    .local v1, "messageView":Landroid/widget/TextView;
    const v5, 0x102032b

    #@1d
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/widget/TextView;

    #@23
    .line 777
    .local v3, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 778
    .local v2, "status":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_1

    #@2d
    .line 779
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@30
    .line 783
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 784
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    #@36
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@39
    .line 785
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@3b
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@3e
    .line 789
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    #@40
    if-eqz v5, :cond_3

    #@42
    .line 790
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    #@44
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@47
    .line 795
    :goto_2
    return-object v4

    #@48
    .line 781
    :cond_1
    const/16 v5, 0x8

    #@4a
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    #@4d
    goto :goto_0

    #@4e
    .line 786
    :cond_2
    iget v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    #@50
    if-eqz v5, :cond_0

    #@52
    .line 787
    iget v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    #@54
    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5b
    goto :goto_1

    #@5c
    .line 792
    :cond_3
    iget v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    #@5e
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    #@61
    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 763
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    #@6
    return-object v0

    #@7
    .line 765
    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    #@9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 756
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 752
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public abstract onPress()V
.end method
