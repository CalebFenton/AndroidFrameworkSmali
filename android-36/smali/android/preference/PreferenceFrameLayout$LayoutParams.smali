.class public Landroid/preference/PreferenceFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "PreferenceFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public greylist-max-o removeBorders:Z


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 158
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 145
    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceFrameLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 147
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 150
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    return-void
.end method
