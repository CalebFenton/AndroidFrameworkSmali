.class public final synthetic Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;->f$1:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;->f$0:I

    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;->f$1:Landroid/os/PersistableBundle;

    check-cast p1, Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;

    check-cast p2, Landroid/media/LoudnessCodecController;

    invoke-static {v0, v1, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->lambda$dispatchLoudnessCodecParameterChange$1(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/LoudnessCodecController;)Landroid/media/LoudnessCodecController;

    move-result-object p1

    return-object p1
.end method
