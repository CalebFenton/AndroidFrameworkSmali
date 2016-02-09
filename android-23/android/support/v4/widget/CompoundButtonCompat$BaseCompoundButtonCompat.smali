.class Landroid/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"

# interfaces
.implements Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseCompoundButtonCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    #@0
    .prologue
    .line 80
    invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatDonut;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    #@0
    .prologue
    .line 65
    invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatDonut;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    #@0
    .prologue
    .line 75
    invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatDonut;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 60
    invoke-static {p1, p2}, Landroid/support/v4/widget/CompoundButtonCompatDonut;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    #@3
    .line 59
    return-void
.end method

.method public setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 70
    invoke-static {p1, p2}, Landroid/support/v4/widget/CompoundButtonCompatDonut;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    #@3
    .line 69
    return-void
.end method
