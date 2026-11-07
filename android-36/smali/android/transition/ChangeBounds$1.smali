.class Landroid/transition/ChangeBounds$1;
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
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBounds:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;

    .line 72
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;
    .registers 5
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

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

    .line 72
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/transition/ChangeBounds$1;->get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V
    .registers 6
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;
    .param p2, "value"    # Landroid/graphics/PointF;

    .line 77
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 78
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 79
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 80
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

    .line 72
    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeBounds$1;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V

    return-void
.end method
