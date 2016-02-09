.class Landroid/support/v4/widget/CompoundButtonCompatDonut;
.super Ljava/lang/Object;
.source "CompoundButtonCompatDonut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompatDonut"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "button"    # Landroid/widget/CompoundButton;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 61
    sget-boolean v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 63
    :try_start_0
    const-class v2, Landroid/widget/CompoundButton;

    #@8
    const-string/jumbo v3, "mButtonDrawable"

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@e
    move-result-object v2

    #@f
    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    #@11
    .line 64
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    #@13
    const/4 v3, 0x1

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 68
    :goto_0
    sput-boolean v5, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    #@19
    .line 71
    :cond_0
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 73
    :try_start_1
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    #@1f
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    return-object v2

    #@26
    .line 65
    :catch_0
    move-exception v1

    #@27
    .line 66
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "CompoundButtonCompatDonut"

    #@2a
    const-string/jumbo v3, "Failed to retrieve mButtonDrawable field"

    #@2d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0

    #@31
    .line 74
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    #@32
    .line 75
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "CompoundButtonCompatDonut"

    #@35
    const-string/jumbo v3, "Failed to get button drawable via reflection"

    #@38
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 76
    sput-object v4, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    #@3d
    .line 79
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    return-object v4
.end method

.method static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;

    #@0
    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 42
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    #@6
    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 44
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;

    #@0
    .prologue
    .line 54
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 55
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    #@6
    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 57
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 36
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    #@6
    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    #@9
    .line 34
    :cond_0
    return-void
.end method

.method static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 49
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    #@6
    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@9
    .line 47
    :cond_0
    return-void
.end method
