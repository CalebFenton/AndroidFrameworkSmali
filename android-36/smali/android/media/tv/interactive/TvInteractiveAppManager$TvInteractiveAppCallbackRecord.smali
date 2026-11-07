.class final Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvInteractiveAppCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    .line 866
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 867
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;
    .registers 2

    .line 870
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    return-object v0
.end method

.method public blacklist postInteractiveAppServiceAdded(Ljava/lang/String;)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 874
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 880
    return-void
.end method

.method public blacklist postInteractiveAppServiceRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 883
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$2;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 889
    return-void
.end method

.method public blacklist postInteractiveAppServiceUpdated(Ljava/lang/String;)V
    .registers 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 892
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$3;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 898
    return-void
.end method

.method public blacklist postStateChanged(Ljava/lang/String;III)V
    .registers 12
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "state"    # I
    .param p4, "err"    # I

    .line 911
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "iAppServiceId":Ljava/lang/String;
    .end local p2    # "type":I
    .end local p3    # "state":I
    .end local p4    # "err":I
    .local v3, "iAppServiceId":Ljava/lang/String;
    .local v4, "type":I
    .local v5, "state":I
    .local v6, "err":I
    invoke-direct/range {v1 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 918
    return-void
.end method

.method public blacklist postTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V
    .registers 4
    .param p1, "iAppInfo"    # Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 902
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$4;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 908
    return-void
.end method
