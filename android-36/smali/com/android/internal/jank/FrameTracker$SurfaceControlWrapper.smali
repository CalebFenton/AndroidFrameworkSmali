.class public Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceControlWrapper"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
    .registers 4
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 826
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl;->addOnJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    move-result-object v0

    return-object v0
.end method
