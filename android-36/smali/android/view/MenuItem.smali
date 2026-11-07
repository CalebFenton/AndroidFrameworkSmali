.class public interface abstract Landroid/view/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuItem$OnActionExpandListener;,
        Landroid/view/MenuItem$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final whitelist SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final whitelist SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8

.field public static final whitelist SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final whitelist SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final whitelist SHOW_AS_ACTION_WITH_TEXT:I = 0x4


# virtual methods
.method public abstract whitelist collapseActionView()Z
.end method

.method public abstract whitelist expandActionView()Z
.end method

.method public abstract whitelist getActionProvider()Landroid/view/ActionProvider;
.end method

.method public abstract whitelist getActionView()Landroid/view/View;
.end method

.method public whitelist getAlphabeticModifiers()I
    .registers 2

    .line 521
    const/16 v0, 0x1000

    return v0
.end method

.method public abstract whitelist getAlphabeticShortcut()C
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 824
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getGroupId()I
.end method

.method public abstract whitelist getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public whitelist getIconTintBlendMode()Landroid/graphics/BlendMode;
    .registers 3

    .line 317
    invoke-interface {p0}, Landroid/view/MenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 318
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_d

    .line 319
    iget v1, v0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v1}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v1

    return-object v1

    .line 321
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getIntent()Landroid/content/Intent;
.end method

.method public abstract whitelist getItemId()I
.end method

.method public abstract whitelist getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.end method

.method public whitelist getNumericModifiers()I
    .registers 2

    .line 457
    const/16 v0, 0x1000

    return v0
.end method

.method public abstract whitelist getNumericShortcut()C
.end method

.method public abstract whitelist getOrder()I
.end method

.method public abstract whitelist getSubMenu()Landroid/view/SubMenu;
.end method

.method public abstract whitelist getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getTitleCondensed()Ljava/lang/CharSequence;
.end method

.method public whitelist getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .line 842
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist hasSubMenu()Z
.end method

.method public abstract whitelist isActionViewExpanded()Z
.end method

.method public abstract whitelist isCheckable()Z
.end method

.method public abstract whitelist isChecked()Z
.end method

.method public abstract whitelist isEnabled()Z
.end method

.method public abstract whitelist isVisible()Z
.end method

.method public greylist-max-o requiresActionButton()Z
    .registers 2

    .line 852
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o requiresOverflow()Z
    .registers 2

    .line 862
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setActionView(I)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setActionView(Landroid/view/View;)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setAlphabeticShortcut(C)Landroid/view/MenuItem;
.end method

.method public whitelist setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 5
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .line 496
    const v0, 0x1100f

    and-int/2addr v0, p2

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 497
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0

    .line 499
    :cond_d
    return-object p0
.end method

.method public abstract whitelist setCheckable(Z)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setChecked(Z)Landroid/view/MenuItem;
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 815
    return-object p0
.end method

.method public abstract whitelist setEnabled(Z)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setIcon(I)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
.end method

.method public whitelist setIconTintBlendMode(Landroid/graphics/BlendMode;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 289
    invoke-static {p1}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 290
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_b

    .line 291
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    move-result-object v1

    return-object v1

    .line 293
    :cond_b
    return-object p0
.end method

.method public whitelist setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 253
    return-object p0
.end method

.method public whitelist setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 275
    return-object p0
.end method

.method public abstract whitelist setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setNumericShortcut(C)Landroid/view/MenuItem;
.end method

.method public whitelist setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 5
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .line 432
    const v0, 0x1100f

    and-int/2addr v0, p2

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 433
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0

    .line 435
    :cond_d
    return-object p0
.end method

.method public abstract whitelist setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setShortcut(CC)Landroid/view/MenuItem;
.end method

.method public whitelist setShortcut(CCII)Landroid/view/MenuItem;
    .registers 8
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .line 399
    const v0, 0x1100f

    and-int v1, p4, v0

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_11

    and-int/2addr v0, p3

    if-ne v0, v2, :cond_11

    .line 401
    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0

    .line 403
    :cond_11
    return-object p0
.end method

.method public abstract whitelist setShowAsAction(I)V
.end method

.method public abstract whitelist setShowAsActionFlags(I)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setTitle(I)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.end method

.method public abstract whitelist setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.end method

.method public whitelist setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 833
    return-object p0
.end method

.method public abstract whitelist setVisible(Z)Landroid/view/MenuItem;
.end method
