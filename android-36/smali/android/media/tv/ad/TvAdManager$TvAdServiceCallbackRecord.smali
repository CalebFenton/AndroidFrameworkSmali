.class final Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvAdServiceCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;)Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mCallback:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mCallback:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    .line 1375
    iput-object p2, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1376
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;
    .registers 2

    .line 1379
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mCallback:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    return-object v0
.end method

.method public blacklist postAdServiceAdded(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 1383
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$1;-><init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1389
    return-void
.end method

.method public blacklist postAdServiceRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 1392
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$2;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$2;-><init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1398
    return-void
.end method

.method public blacklist postAdServiceUpdated(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 1401
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$3;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$3;-><init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1407
    return-void
.end method
