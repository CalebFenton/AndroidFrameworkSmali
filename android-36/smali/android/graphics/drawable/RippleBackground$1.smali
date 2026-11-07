.class Landroid/graphics/drawable/RippleBackground$1;
.super Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleBackground$BackgroundProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/graphics/drawable/RippleBackground;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Landroid/graphics/drawable/RippleBackground;

    .line 117
    invoke-static {p1}, Landroid/graphics/drawable/RippleBackground;->-$$Nest$fgetmOpacity(Landroid/graphics/drawable/RippleBackground;)F

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

    .line 108
    check-cast p1, Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleBackground$1;->get(Landroid/graphics/drawable/RippleBackground;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/graphics/drawable/RippleBackground;F)V
    .registers 3
    .param p1, "object"    # Landroid/graphics/drawable/RippleBackground;
    .param p2, "value"    # F

    .line 111
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleBackground;->-$$Nest$fputmOpacity(Landroid/graphics/drawable/RippleBackground;F)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/drawable/RippleBackground;->invalidateSelf()V

    .line 113
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

    .line 108
    check-cast p1, Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleBackground$1;->setValue(Landroid/graphics/drawable/RippleBackground;F)V

    return-void
.end method
