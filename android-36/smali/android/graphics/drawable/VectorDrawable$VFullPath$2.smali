.class Landroid/graphics/drawable/VectorDrawable$VFullPath$2;
.super Landroid/util/IntProperty;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VFullPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1783
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/graphics/drawable/VectorDrawable$VFullPath;)Ljava/lang/Integer;
    .registers 3
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .line 1791
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

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

    .line 1783
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;->get(Landroid/graphics/drawable/VectorDrawable$VFullPath;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/graphics/drawable/VectorDrawable$VFullPath;I)V
    .registers 3
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p2, "value"    # I

    .line 1786
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->setStrokeColor(I)V

    .line 1787
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

    .line 1783
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;->setValue(Landroid/graphics/drawable/VectorDrawable$VFullPath;I)V

    return-void
.end method
