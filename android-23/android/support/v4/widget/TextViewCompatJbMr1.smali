.class Landroid/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x1

    #@5
    if-ne v1, v2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 31
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    #@a
    move-object v1, p3

    #@b
    :goto_1
    if-eqz v0, :cond_2

    #@d
    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@10
    .line 29
    return-void

    #@11
    .line 30
    .end local v0    # "rtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "rtl":Z
    goto :goto_0

    #@13
    :cond_1
    move-object v1, p1

    #@14
    .line 31
    goto :goto_1

    #@15
    :cond_2
    move-object p1, p3

    #@16
    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x1

    #@5
    if-ne v1, v2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 45
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    #@a
    move v1, p3

    #@b
    :goto_1
    if-eqz v0, :cond_2

    #@d
    .end local p1    # "start":I
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    #@10
    .line 43
    return-void

    #@11
    .line 44
    .end local v0    # "rtl":Z
    .restart local p1    # "start":I
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "rtl":Z
    goto :goto_0

    #@13
    :cond_1
    move v1, p1

    #@14
    .line 45
    goto :goto_1

    #@15
    :cond_2
    move p1, p3

    #@16
    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x1

    #@5
    if-ne v1, v2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 38
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    #@a
    move-object v1, p3

    #@b
    :goto_1
    if-eqz v0, :cond_2

    #@d
    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@10
    .line 36
    return-void

    #@11
    .line 37
    .end local v0    # "rtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "rtl":Z
    goto :goto_0

    #@13
    :cond_1
    move-object v1, p1

    #@14
    .line 38
    goto :goto_1

    #@15
    :cond_2
    move-object p1, p3

    #@16
    goto :goto_2
.end method
