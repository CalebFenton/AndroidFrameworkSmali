.class Landroid/transition/ChangeBounds$5;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 134
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 146
    const/4 v0, 0x0

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

    .line 134
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/transition/ChangeBounds$5;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topLeft"    # Landroid/graphics/PointF;

    .line 137
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 138
    .local v0, "left":I
    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 139
    .local v1, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 140
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 141
    .local v3, "bottom":I
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 142
    return-void
.end method

.method public bridge synthetic whitelist set(Ljava/lang/Object;Ljava/lang/Object;)V
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

    .line 134
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeBounds$5;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method
