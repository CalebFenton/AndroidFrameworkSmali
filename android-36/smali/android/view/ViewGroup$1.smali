.class Landroid/view/ViewGroup$1;
.super Landroid/view/ActionMode;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 654
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist finish()V
    .registers 1

    .line 674
    return-void
.end method

.method public whitelist getCustomView()Landroid/view/View;
    .registers 2

    .line 693
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .registers 2

    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 698
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 688
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 683
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist invalidate()V
    .registers 1

    .line 671
    return-void
.end method

.method public whitelist setCustomView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 668
    return-void
.end method

.method public whitelist setSubtitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 665
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 662
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 659
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 656
    return-void
.end method
