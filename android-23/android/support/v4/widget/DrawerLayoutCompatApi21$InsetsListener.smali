.class Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;
.super Ljava/lang/Object;
.source "DrawerLayoutCompatApi21.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayoutCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsetsListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 89
    check-cast v0, Landroid/support/v4/widget/DrawerLayoutImpl;

    #@4
    .line 90
    .local v0, "drawerLayout":Landroid/support/v4/widget/DrawerLayoutImpl;
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@7
    move-result v2

    #@8
    if-lez v2, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :cond_0
    invoke-interface {v0, p2, v1}, Landroid/support/v4/widget/DrawerLayoutImpl;->setChildInsets(Ljava/lang/Object;Z)V

    #@e
    .line 91
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method
