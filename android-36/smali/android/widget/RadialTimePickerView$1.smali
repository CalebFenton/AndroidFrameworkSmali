.class Landroid/widget/RadialTimePickerView$1;
.super Landroid/util/FloatProperty;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/widget/RadialTimePickerView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/RadialTimePickerView;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 121
    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/widget/RadialTimePickerView;)Ljava/lang/Float;
    .registers 3
    .param p1, "radialTimePickerView"    # Landroid/widget/RadialTimePickerView;

    .line 124
    invoke-static {p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmHoursToMinutes(Landroid/widget/RadialTimePickerView;)F

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

    .line 121
    check-cast p1, Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView$1;->get(Landroid/widget/RadialTimePickerView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/widget/RadialTimePickerView;F)V
    .registers 3
    .param p1, "object"    # Landroid/widget/RadialTimePickerView;
    .param p2, "value"    # F

    .line 129
    invoke-static {p1, p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fputmHoursToMinutes(Landroid/widget/RadialTimePickerView;F)V

    .line 130
    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 131
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

    .line 121
    check-cast p1, Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/RadialTimePickerView$1;->setValue(Landroid/widget/RadialTimePickerView;F)V

    return-void
.end method
