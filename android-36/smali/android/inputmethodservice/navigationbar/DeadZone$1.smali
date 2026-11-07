.class Landroid/inputmethodservice/navigationbar/DeadZone$1;
.super Landroid/util/FloatProperty;
.source "DeadZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/DeadZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/inputmethodservice/navigationbar/DeadZone;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/inputmethodservice/navigationbar/DeadZone;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Landroid/inputmethodservice/navigationbar/DeadZone;

    .line 60
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->getFlash()F

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

    .line 52
    check-cast p1, Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone$1;->get(Landroid/inputmethodservice/navigationbar/DeadZone;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/inputmethodservice/navigationbar/DeadZone;F)V
    .registers 3
    .param p1, "object"    # Landroid/inputmethodservice/navigationbar/DeadZone;
    .param p2, "value"    # F

    .line 55
    invoke-virtual {p1, p2}, Landroid/inputmethodservice/navigationbar/DeadZone;->setFlash(F)V

    .line 56
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

    .line 52
    check-cast p1, Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/navigationbar/DeadZone$1;->setValue(Landroid/inputmethodservice/navigationbar/DeadZone;F)V

    return-void
.end method
