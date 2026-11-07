.class public final Landroid/view/SurfaceControl$DisplayPrimaries;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPrimaries"
.end annotation


# instance fields
.field public blacklist blue:Landroid/view/SurfaceControl$CieXyz;

.field public blacklist green:Landroid/view/SurfaceControl$CieXyz;

.field public blacklist red:Landroid/view/SurfaceControl$CieXyz;

.field public blacklist white:Landroid/view/SurfaceControl$CieXyz;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2566
    return-void
.end method
