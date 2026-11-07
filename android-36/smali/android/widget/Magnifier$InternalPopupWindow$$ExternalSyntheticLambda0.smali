.class public final synthetic Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/Magnifier$InternalPopupWindow;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Magnifier$InternalPopupWindow;

    iput-boolean p2, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$3:I

    iput-boolean p5, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final blacklist onFrameDraw(J)V
    .registers 10

    .line 0
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Magnifier$InternalPopupWindow;

    iget-boolean v1, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$3:I

    iget-boolean v4, p0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;->f$4:Z

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Landroid/widget/Magnifier$InternalPopupWindow;->$r8$lambda$anz8nud3Iq6rx1egcDwS_UvEQMc(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZJ)V

    return-void
.end method
