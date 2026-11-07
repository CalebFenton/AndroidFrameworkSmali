.class public Landroid/widget/ImageSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "ImageSwitcher.java"


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 103
    const-class v0, Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->showNext()V

    .line 99
    return-void
.end method

.method public whitelist setImageResource(I)V
    .registers 3
    .param p1, "resid"    # I

    .line 64
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->showNext()V

    .line 67
    return-void
.end method

.method public whitelist setImageURI(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 80
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 82
    invoke-virtual {p0}, Landroid/widget/ImageSwitcher;->showNext()V

    .line 83
    return-void
.end method
