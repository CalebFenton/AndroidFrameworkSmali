.class Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$1;
.super Landroid/util/FloatProperty;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)Ljava/lang/Float;
    .registers 3
    .param p1, "drawable"    # Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 65
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getRotation()F

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

    .line 57
    check-cast p1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$1;->get(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;F)V
    .registers 3
    .param p1, "drawable"    # Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .param p2, "degree"    # F

    .line 60
    invoke-virtual {p1, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setRotation(F)V

    .line 61
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

    .line 57
    check-cast p1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$1;->setValue(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;F)V

    return-void
.end method
