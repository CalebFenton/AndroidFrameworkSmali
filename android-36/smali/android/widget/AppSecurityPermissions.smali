.class public Landroid/widget/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grpName"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "dangerous"    # Z

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/LayoutInflater;

    .line 44
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-eqz p3, :cond_f

    .line 45
    const v0, 0x10803d1

    goto :goto_12

    :cond_f
    const v0, 0x10805f6

    .line 44
    :goto_12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 46
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "grpName":Ljava/lang/CharSequence;
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "dangerous":Z
    .local v1, "context":Landroid/content/Context;
    .local v3, "grpName":Ljava/lang/CharSequence;
    .local v4, "description":Ljava/lang/CharSequence;
    .local v5, "dangerous":Z
    invoke-static/range {v1 .. v6}, Landroid/widget/AppSecurityPermissions;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "grpName"    # Ljava/lang/CharSequence;
    .param p3, "permList"    # Ljava/lang/CharSequence;
    .param p4, "dangerous"    # Z
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 52
    const v0, 0x1090045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "permView":Landroid/view/View;
    const v1, 0x102046d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, "permGrpView":Landroid/widget/TextView;
    const v2, 0x102046f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, "permDescView":Landroid/widget/TextView;
    const v3, 0x1020468

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 58
    .local v3, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v3, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    if-eqz p2, :cond_2f

    .line 60
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 63
    :cond_2f
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_37
    return-object v0
.end method
