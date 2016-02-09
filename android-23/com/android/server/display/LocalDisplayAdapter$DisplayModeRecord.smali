.class final Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayModeRecord"
.end annotation


# instance fields
.field public final mMode:Landroid/view/Display$Mode;

.field public final mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field public mPhysIndex:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V
    .locals 3
    .param p1, "phys"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "physIndex"    # I

    #@0
    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 448
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@5
    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@7
    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    #@9
    invoke-static {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@f
    .line 449
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@11
    .line 450
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhysIndex:I

    #@13
    .line 447
    return-void
.end method
