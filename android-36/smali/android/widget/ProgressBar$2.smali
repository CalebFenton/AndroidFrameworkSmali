.class Landroid/widget/ProgressBar$2;
.super Landroid/util/FloatProperty;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/widget/ProgressBar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/widget/ProgressBar;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/ProgressBar;
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

    .line 2444
    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/widget/ProgressBar;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Landroid/widget/ProgressBar;

    .line 2453
    invoke-static {p1}, Landroid/widget/ProgressBar;->-$$Nest$fgetmVisualProgress(Landroid/widget/ProgressBar;)F

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

    .line 2444
    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar$2;->get(Landroid/widget/ProgressBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Landroid/widget/ProgressBar;F)V
    .registers 4
    .param p1, "object"    # Landroid/widget/ProgressBar;
    .param p2, "value"    # F

    .line 2447
    const v0, 0x102000d

    invoke-static {p1, v0, p2}, Landroid/widget/ProgressBar;->-$$Nest$msetVisualProgress(Landroid/widget/ProgressBar;IF)V

    .line 2448
    invoke-static {p1, p2}, Landroid/widget/ProgressBar;->-$$Nest$fputmVisualProgress(Landroid/widget/ProgressBar;F)V

    .line 2449
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

    .line 2444
    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar$2;->setValue(Landroid/widget/ProgressBar;F)V

    return-void
.end method
