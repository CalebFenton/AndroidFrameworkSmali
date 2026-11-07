.class Lcom/android/internal/policy/DecorView$2;
.super Landroid/graphics/drawable/InsetDrawable;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "insetLeft"    # I
    .param p4, "insetTop"    # I
    .param p5, "insetRight"    # I
    .param p6, "insetBottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1312
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .end local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p3    # "insetLeft":I
    .end local p4    # "insetTop":I
    .end local p5    # "insetRight":I
    .end local p6    # "insetBottom":I
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "insetLeft":I
    .local v3, "insetTop":I
    .local v4, "insetRight":I
    .local v5, "insetBottom":I
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method


# virtual methods
.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1320
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView$2;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
