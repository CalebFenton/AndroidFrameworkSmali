.class Landroid/graphics/drawable/VectorDrawable$VGroup$2;
.super Landroid/util/FloatProperty;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/graphics/drawable/VectorDrawable$VGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1207
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/graphics/drawable/VectorDrawable$VGroup;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1215
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getTranslateY()F

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

    .line 1207
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup$2;->get(Landroid/graphics/drawable/VectorDrawable$VGroup;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/graphics/drawable/VectorDrawable$VGroup;F)V
    .registers 3
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "value"    # F

    .line 1210
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTranslateY(F)V

    .line 1211
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

    .line 1207
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup$2;->setValue(Landroid/graphics/drawable/VectorDrawable$VGroup;F)V

    return-void
.end method
