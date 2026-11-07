.class Landroid/view/SurfaceControlRegistry$NoOpRegistry;
.super Landroid/view/SurfaceControlRegistry;
.source "SurfaceControlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpRegistry"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControlRegistry;-><init>(Landroid/view/SurfaceControlRegistry-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControlRegistry-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceControlRegistry$NoOpRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist add(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 447
    return-void
.end method

.method blacklist remove(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 450
    return-void
.end method

.method public blacklist setReportingThresholds(IILandroid/view/SurfaceControlRegistry$Reporter;)V
    .registers 4
    .param p1, "maxLayersReportingThreshold"    # I
    .param p2, "resetReportingThreshold"    # I
    .param p3, "reporter"    # Landroid/view/SurfaceControlRegistry$Reporter;

    .line 444
    return-void
.end method
