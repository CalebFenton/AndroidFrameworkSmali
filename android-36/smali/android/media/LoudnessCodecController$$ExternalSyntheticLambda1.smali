.class public final synthetic Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic blacklist f$1:Landroid/media/MediaCodec;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaCodec;

    check-cast p1, Landroid/media/LoudnessCodecInfo;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, v1, p1, p2}, Landroid/media/LoudnessCodecController;->lambda$addMediaCodec$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Landroid/media/LoudnessCodecInfo;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
