.class public final synthetic Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

.field public final synthetic blacklist f$1:Landroid/media/projection/MediaProjectionEvent;

.field public final synthetic blacklist f$2:Landroid/media/projection/MediaProjectionInfo;

.field public final synthetic blacklist f$3:Landroid/view/ContentRecordingSession;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    iput-object p2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/media/projection/MediaProjectionEvent;

    iput-object p3, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$2:Landroid/media/projection/MediaProjectionInfo;

    iput-object p4, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$3:Landroid/view/ContentRecordingSession;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/media/projection/MediaProjectionEvent;

    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$2:Landroid/media/projection/MediaProjectionInfo;

    iget-object v3, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;->f$3:Landroid/view/ContentRecordingSession;

    invoke-static {v0, v1, v2, v3}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->$r8$lambda$A_RHsM6e1N7-eTIh-u9Qo2B5O7I(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method
