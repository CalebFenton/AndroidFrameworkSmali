.class Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$13;
.super Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/view/View;)Ljava/lang/Float;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

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

    .line 241
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$13;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/view/View;F)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .line 244
    float-to-int v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollX(I)V

    .line 245
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

    .line 241
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$13;->setValue(Landroid/view/View;F)V

    return-void
.end method
