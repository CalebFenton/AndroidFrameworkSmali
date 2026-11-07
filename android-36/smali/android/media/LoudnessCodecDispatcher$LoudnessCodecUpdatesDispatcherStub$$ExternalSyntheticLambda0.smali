.class public final synthetic Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    iput p2, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;->f$2:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    iget v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;->f$2:Landroid/os/PersistableBundle;

    check-cast p1, Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;

    invoke-static {v0, v1, v2, p1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->$r8$lambda$OTkOqPriJqnS11TvsEiiJrHQCyM(Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    return-void
.end method
