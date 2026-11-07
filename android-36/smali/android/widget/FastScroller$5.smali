.class Landroid/widget/FastScroller$5;
.super Landroid/util/IntProperty;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1658
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/view/View;)Ljava/lang/Integer;
    .registers 3
    .param p1, "object"    # Landroid/view/View;

    .line 1666
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1658
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FastScroller$5;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/view/View;I)V
    .registers 3
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # I

    .line 1661
    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    .line 1662
    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1658
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FastScroller$5;->setValue(Landroid/view/View;I)V

    return-void
.end method
