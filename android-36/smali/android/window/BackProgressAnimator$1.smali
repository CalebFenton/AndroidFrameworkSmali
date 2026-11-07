.class Landroid/window/BackProgressAnimator$1;
.super Landroid/util/FloatProperty;
.source "BackProgressAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/BackProgressAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/window/BackProgressAnimator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/window/BackProgressAnimator;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Landroid/window/BackProgressAnimator;

    .line 100
    invoke-static {p1}, Landroid/window/BackProgressAnimator;->-$$Nest$mgetProgress(Landroid/window/BackProgressAnimator;)F

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

    .line 92
    check-cast p1, Landroid/window/BackProgressAnimator;

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator$1;->get(Landroid/window/BackProgressAnimator;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/window/BackProgressAnimator;F)V
    .registers 3
    .param p1, "animator"    # Landroid/window/BackProgressAnimator;
    .param p2, "value"    # F

    .line 95
    invoke-static {p1, p2}, Landroid/window/BackProgressAnimator;->-$$Nest$msetProgress(Landroid/window/BackProgressAnimator;F)V

    .line 96
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

    .line 92
    check-cast p1, Landroid/window/BackProgressAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/window/BackProgressAnimator$1;->setValue(Landroid/window/BackProgressAnimator;F)V

    return-void
.end method
