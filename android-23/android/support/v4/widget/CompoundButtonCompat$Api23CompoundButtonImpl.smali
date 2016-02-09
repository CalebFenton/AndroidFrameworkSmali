.class Landroid/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;
.super Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23CompoundButtonImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    #@0
    .prologue
    .line 109
    invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatApi23;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
