.class final Landroid/transition/ChangeBounds$1;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "$anonymous1"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@3
    .line 70
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@a
    .line 69
    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;
    .locals 3
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@5
    .line 82
    new-instance v0, Landroid/graphics/PointF;

    #@7
    iget-object v1, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@9
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@b
    int-to-float v1, v1

    #@c
    iget-object v2, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@e
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@10
    int-to-float v2, v2

    #@11
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    #@14
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 80
    check-cast p1, Landroid/graphics/drawable/Drawable;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/transition/ChangeBounds$1;->get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;
    .param p2, "value"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@5
    .line 75
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@7
    iget v1, p2, Landroid/graphics/PointF;->x:F

    #@9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@c
    move-result v1

    #@d
    iget v2, p2, Landroid/graphics/PointF;->y:F

    #@f
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@12
    move-result v2

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    #@16
    .line 76
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@18
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@1b
    .line 73
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    check-cast p1, Landroid/graphics/drawable/Drawable;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/PointF;

    #@4
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeBounds$1;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V

    #@7
    return-void
.end method
