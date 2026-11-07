.class Landroid/view/SurfaceControl$OnJankDataListenerRegistration$1;
.super Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 581
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;-><init>(Landroid/view/SurfaceControl-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist flush()V
    .registers 1

    .line 583
    return-void
.end method

.method public blacklist release()V
    .registers 1

    .line 589
    return-void
.end method

.method public whitelist removeAfter(J)V
    .registers 3
    .param p1, "afterVsync"    # J

    .line 586
    return-void
.end method
