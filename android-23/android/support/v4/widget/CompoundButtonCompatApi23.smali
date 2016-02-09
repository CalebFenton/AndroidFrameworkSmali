.class Landroid/support/v4/widget/CompoundButtonCompatApi23;
.super Ljava/lang/Object;
.source "CompoundButtonCompatApi23.java"


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

.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;

    #@0
    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
