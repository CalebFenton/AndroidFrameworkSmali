.class public final synthetic Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Landroid/view/DisplayInfo;

.field public final synthetic blacklist f$5:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;JIILandroid/view/DisplayInfo;Z)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    iput-wide p2, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$2:I

    iput p5, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$3:I

    iput-object p6, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$4:Landroid/view/DisplayInfo;

    iput-boolean p7, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 8

    .line 0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    iget-wide v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$1:J

    iget v3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$2:I

    iget v4, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$3:I

    iget-object v5, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$4:Landroid/view/DisplayInfo;

    iget-boolean v6, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate$$ExternalSyntheticLambda0;->f$5:Z

    invoke-static/range {v0 .. v6}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->$r8$lambda$U7s70EKugVQNzFVIVvJsNmT_WdQ(Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;JIILandroid/view/DisplayInfo;Z)V

    return-void
.end method
