.class public final synthetic Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    iput p3, p0, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    iget v2, p0, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/view/ScreenRecordingCallbacks;->lambda$notifyCallbacks$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    return-void
.end method
