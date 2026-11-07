.class final Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/MediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientBacklightCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;)Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    .line 1038
    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1039
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;
    .registers 2

    .line 1042
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    return-object v0
.end method

.method public blacklist postAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/quality/AmbientBacklightEvent;

    .line 1046
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord$1;-><init>(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;Landroid/media/quality/AmbientBacklightEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1052
    return-void
.end method
