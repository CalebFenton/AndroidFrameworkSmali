.class Landroid/support/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCompatBase"

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z


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

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 36
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    #@6
    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    #@9
    move-result-object v0

    #@a
    .line 35
    :goto_0
    return-object v0

    #@b
    .line 37
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 47
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 48
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    #@6
    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    #@9
    move-result-object v0

    #@a
    .line 47
    :goto_0
    return-object v0

    #@b
    .line 49
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method static getMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 86
    sget-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 88
    :try_start_0
    const-class v2, Landroid/view/View;

    #@7
    const-string/jumbo v3, "mMinHeight"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@d
    move-result-object v2

    #@e
    sput-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    #@10
    .line 89
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    #@12
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    #@16
    .line 93
    :goto_0
    sput-boolean v4, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    #@18
    .line 96
    :cond_0
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 98
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    #@1e
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/lang/Integer;

    #@24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 99
    :catch_0
    move-exception v0

    #@2a
    .line 105
    :cond_1
    const/4 v2, 0x0

    #@2b
    return v2

    #@2c
    .line 90
    :catch_1
    move-exception v1

    #@2d
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method static getMinimumWidth(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 63
    sget-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 65
    :try_start_0
    const-class v2, Landroid/view/View;

    #@7
    const-string/jumbo v3, "mMinWidth"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@d
    move-result-object v2

    #@e
    sput-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    #@10
    .line 66
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    #@12
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    #@16
    .line 70
    :goto_0
    sput-boolean v4, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    #@18
    .line 73
    :cond_0
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 75
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    #@1e
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/lang/Integer;

    #@24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 76
    :catch_0
    move-exception v0

    #@2a
    .line 82
    :cond_1
    const/4 v2, 0x0

    #@2b
    return v2

    #@2c
    .line 67
    :catch_1
    move-exception v1

    #@2d
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method static isAttachedToWindow(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method static isLaidOut(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 42
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    #@6
    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    #@9
    .line 40
    :cond_0
    return-void
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 53
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 54
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    #@6
    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@9
    .line 52
    :cond_0
    return-void
.end method
