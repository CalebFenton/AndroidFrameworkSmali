.class public final synthetic Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaTranscodingManager$TranscodingSession;

.field public final synthetic blacklist f$1:Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaTranscodingManager$TranscodingSession;Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaTranscodingManager$TranscodingSession;

    iput-object p2, p0, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;

    iput p3, p0, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaTranscodingManager$TranscodingSession;

    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;

    iget p0, p0, Landroid/media/MediaTranscodingManager$TranscodingSession$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0}, Landroid/media/MediaTranscodingManager$TranscodingSession;->$r8$lambda$JTFXjXjEuCcmgPcDxcPkgHoFGUw(Landroid/media/MediaTranscodingManager$TranscodingSession;Landroid/media/MediaTranscodingManager$TranscodingSession$OnProgressUpdateListener;I)V

    return-void
.end method
