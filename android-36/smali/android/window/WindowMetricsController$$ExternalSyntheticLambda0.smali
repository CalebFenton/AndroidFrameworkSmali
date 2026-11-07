.class public final synthetic Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/WindowMetricsController;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;

.field public final synthetic blacklist f$2:Landroid/graphics/Rect;

.field public final synthetic blacklist f$3:Z

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$0:Landroid/window/WindowMetricsController;

    iput-object p2, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iput-boolean p4, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$3:Z

    iput p5, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$0:Landroid/window/WindowMetricsController;

    iget-object v1, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iget-boolean v3, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$3:Z

    iget v4, p0, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/window/WindowMetricsController;->$r8$lambda$pFTaIba9cW7oBONGFT2xxYPhXLc(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
