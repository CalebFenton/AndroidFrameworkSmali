.class final Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/MediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PictureProfileCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;)Landroid/media/quality/MediaQualityManager$PictureProfileCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/quality/MediaQualityManager$PictureProfileCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    .line 916
    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 917
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/media/quality/MediaQualityManager$PictureProfileCallback;
    .registers 2

    .line 920
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->mCallback:Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    return-object v0
.end method

.method public blacklist postError(Ljava/lang/String;I)V
    .registers 5
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 962
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$5;-><init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 968
    return-void
.end method

.method public blacklist postParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;)V"
        }
    .end annotation

    .line 953
    .local p2, "caps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$4;-><init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 959
    return-void
.end method

.method public blacklist postPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/PictureProfile;

    .line 925
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$1;-><init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 931
    return-void
.end method

.method public blacklist postPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/PictureProfile;

    .line 943
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$3;-><init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 949
    return-void
.end method

.method public blacklist postPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/quality/PictureProfile;

    .line 934
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$2;-><init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 940
    return-void
.end method
