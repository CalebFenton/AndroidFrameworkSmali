.class Landroid/graphics/drawable/RippleForeground$3;
.super Landroid/util/FloatProperty;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/graphics/drawable/RippleForeground;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 439
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Landroid/graphics/drawable/RippleForeground;

    .line 449
    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->-$$Nest$fgetmTweenX(Landroid/graphics/drawable/RippleForeground;)F

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

    .line 439
    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleForeground$3;->get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/graphics/drawable/RippleForeground;F)V
    .registers 3
    .param p1, "object"    # Landroid/graphics/drawable/RippleForeground;
    .param p2, "value"    # F

    .line 442
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleForeground;->-$$Nest$fputmTweenX(Landroid/graphics/drawable/RippleForeground;F)V

    .line 443
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleForeground;->-$$Nest$fputmTweenY(Landroid/graphics/drawable/RippleForeground;F)V

    .line 444
    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->-$$Nest$monAnimationPropertyChanged(Landroid/graphics/drawable/RippleForeground;)V

    .line 445
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

    .line 439
    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleForeground$3;->setValue(Landroid/graphics/drawable/RippleForeground;F)V

    return-void
.end method
