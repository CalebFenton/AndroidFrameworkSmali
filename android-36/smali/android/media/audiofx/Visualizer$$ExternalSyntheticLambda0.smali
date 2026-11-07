.class public final synthetic Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/audiofx/Visualizer;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:[B

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/audiofx/Visualizer;I[BI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;->f$0:Landroid/media/audiofx/Visualizer;

    iput p2, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;->f$2:[B

    iput p4, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;->f$0:Landroid/media/audiofx/Visualizer;

    iget v1, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;->f$2:[B

    iget v3, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/audiofx/Visualizer;->lambda$postEventFromNative$0(Landroid/media/audiofx/Visualizer;I[BI)V

    return-void
.end method
