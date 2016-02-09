.class public Landroid/widget/ImageSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "ImageSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    #@3
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 32
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 59
    const-class v0, Landroid/widget/ImageSwitcher;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/ImageView;

    #@6
    .line 53
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 54
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->showNext()V

    #@c
    .line 50
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resid"    # I

    #@0
    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/ImageView;

    #@6
    .line 39
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    #@9
    .line 40
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->showNext()V

    #@c
    .line 36
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/ImageView;

    #@6
    .line 46
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    #@9
    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->showNext()V

    #@c
    .line 43
    return-void
.end method
