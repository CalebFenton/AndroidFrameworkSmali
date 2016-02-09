.class Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleJellybeanMR2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggleImplJellybeanMR2"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 31
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 32
    const v1, 0x101030b

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 31
    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->THEME_ATTRS:[I

    #@b
    .line 28
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@5
    move-result-object v1

    #@6
    .line 57
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_0

    #@8
    .line 58
    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    #@b
    move-result-object v2

    #@c
    .line 63
    .local v2, "context":Landroid/content/Context;
    :goto_0
    sget-object v4, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->THEME_ATTRS:[I

    #@e
    .line 64
    const v5, 0x10102ce

    #@11
    .line 63
    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@14
    move-result-object v0

    #@15
    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v3

    #@19
    .line 66
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1c
    .line 67
    return-object v3

    #@1d
    .line 60
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v2, p0

    #@1e
    .restart local v2    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentDescRes"    # I

    #@0
    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@3
    move-result-object v0

    #@4
    .line 48
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    #@6
    .line 49
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    #@9
    .line 51
    :cond_0
    return-object p0
.end method

.method public static setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .locals 1
    .param p0, "info"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescRes"    # I

    #@0
    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@3
    move-result-object v0

    #@4
    .line 38
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    #@6
    .line 39
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 40
    invoke-virtual {v0, p3}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    #@c
    .line 42
    :cond_0
    return-object p0
.end method
