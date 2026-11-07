.class Landroid/view/View$10;
.super Landroid/util/FloatProperty;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 31268
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/view/View;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Landroid/view/View;

    .line 31276
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    .line 31268
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View$10;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/view/View;F)V
    .registers 3
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # F

    .line 31271
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    .line 31272
    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;F)V
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

    .line 31268
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$10;->setValue(Landroid/view/View;F)V

    return-void
.end method
